//SUMA
Funcion suma <- CalcularSuma (numero1, numero2, numero3)
	Definir suma Como Real
	suma <- (numero1 + numero2 + numero3)
FinFuncion

//RESTA
Funcion resta <- CalcularResta (numero1, numero2)
	Definir resta Como Real
	resta <- (numero1 - numero2 )
FinFuncion

//MULTIPLICACION
Funcion multiplicar <- CalcularMultiplicacion (numero1, numero2, numero3)
	Definir multiplicar Como Real
	multiplicar <- (numero1 * numero2 * numero3)
FinFuncion

//DIVISION
Funcion dividir <- Calculardivicion (numero1, numero2)
	Definir dividir Como Real
	dividir <- (numero1 / numero2 )
FinFuncion

//SUBPROCESO PARA TODAS
SubProceso MostrarResultado (resultado)
	Escribir "El resultado total es de: ", resultado
FinSubProceso




Algoritmo Calculadora
	
	//DEFINICION DE VARIABLES
	Definir option Como Entero
	Definir a, b, c, resultado Como Real

	
	//SE REPETIRA HASTA QUE SE INGRESE EL NUMERO 5
	Repetir
		
		//MENU DE OPCIONES 
		Escribir "=================================================="
		Escribir "================  CALCULADORA  ==================="
		Escribir ""
		Escribir "Ingrese el numero de la opcion a elegir"
		Escribir ""
		Escribir "1. SUMA"
		Escribir "2. RESTA"
		Escribir "3. MULTIPLICACION"
		Escribir "4. DIVISION"
		Escribir "5. SALIR"
		
		//INGRESA EL NUMERO DE LA OPCION A ELEGIR
		Leer option
		
		//EL MENI DE OPCIONES QUE SE EJECUTARA UNA OPCION CON RESPECTO AL NUMERO NINGRESADO EN LA VARIABLE OPTION
		Segun option hacer 
			
			//SE REALIZARA LA SUMA 
			1:
				Escribir "Selecciono la opcion Sumar"
				//Definir a, b, c Como Real
				Escribir "Ingrese los 3 numersos a sumar:"
				leer a, b, c
				resultado <- CalcularSuma (a, b, c)
				MostrarResultado(resultado)
				
			//SE REALIZARA LA RESTA	
			2:
				Escribir "Selecciono la opcion Restar"
				//Definir a, b Como Real
				Escribir "Ingrese los 2 numersos a restar:"
				leer a, b
				resultado <- CalcularResta (a, b)
				MostrarResultado(resultado)
				
			//SE REALIZARA LA MULTIPLICACION		
			3:
				Escribir "Selecciono la opcion Multiplicar"
				//Definir a, b, c Como Real
				Escribir "Ingrese los 3 numersos a multiplicar:"
				leer a, b, c
				resultado <- CalcularMultiplicacion (a, b, c)
				MostrarResultado(resultado)
				
				
			//SE REALIZARA LA DIVISION	
			4:
				Escribir "Selecciono la opcion Dividir"
				//Definir a, b Como Real
				Escribir "Ingrese los 2 numersos a dividir:"
				leer a, b
				si b == 0 Entonces
					Escribir "Error: no se puede dividir dentro de cero."
				SiNo
					resultado <- Calculardivicion (a, b)
					MostrarResultado(resultado)
				FinSi
				
			//SI INGRESA EL 5 TERMINA EL PROGRAMA
			5:
				Escribir "Selecciono la opcion Salir"
				
			//SI INGRESA OTRA COSA LE DA ESTE MENSAJEDE DE ERORR	
			De Otro Modo:
			
				Escribir "Selecciono una opcion invalida"
				
		FinSegun
		
	Hasta Que option = 5
	
FinAlgoritmo