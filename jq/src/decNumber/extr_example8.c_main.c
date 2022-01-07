
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int decQuad ;
typedef int decNumber ;
typedef int decContext ;


 int DECQUAD_String ;
 int DEC_INIT_DECQUAD ;
 int decContextDefault (int *,int ) ;
 int decNumberFromString (int *,char*,int *) ;
 int decNumberPower (int *,int *,int *,int *) ;
 int decQuadAdd (int *,int *,int *,int *) ;
 int decQuadFromNumber (int *,int *,int *) ;
 int decQuadFromString (int *,char*,int *) ;
 int decQuadToNumber (int *,int *) ;
 int decQuadToString (int *,char*) ;
 int printf (char*,...) ;

int main(int argc, char *argv[]) {
  decQuad a;
  decNumber numa, numb;
  decContext set;
  char string[DECQUAD_String];

  if (argc<3) {
    printf("Please supply two numbers for power(2*a, b).\n");
    return 1;
    }
  decContextDefault(&set, DEC_INIT_DECQUAD);

  decQuadFromString(&a, argv[1], &set);
  decQuadAdd(&a, &a, &a, &set);
  decQuadToNumber(&a, &numa);
  decNumberFromString(&numb, argv[2], &set);
  decNumberPower(&numa, &numa, &numb, &set);
  decQuadFromNumber(&a, &numa, &set);
  decQuadToString(&a, string);

  printf("power(2*%s, %s) => %s\n", argv[1], argv[2], string);
  return 0;
  }
