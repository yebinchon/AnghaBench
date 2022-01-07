
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int decQuad ;
typedef int decContext ;


 int DECQUAD_String ;
 int DEC_INIT_DECQUAD ;
 int decContextDefault (int *,int ) ;
 int decContextTestEndian (int ) ;
 int decQuadAdd (int *,int *,int *,int *) ;
 int decQuadFromString (int *,char*,int *) ;
 int decQuadToString (int *,char*) ;
 int printf (char*,...) ;

int main(int argc, char *argv[]) {
  decQuad a, b;
  decContext set;
  char string[DECQUAD_String];

  decContextTestEndian(0);

  if (argc<3) {
    printf("Please supply two numbers to add.\n");
    return 1;
    }
  decContextDefault(&set, DEC_INIT_DECQUAD);

  decQuadFromString(&a, argv[1], &set);
  decQuadFromString(&b, argv[2], &set);
  decQuadAdd(&a, &a, &b, &set);
  decQuadToString(&a, string);

  printf("%s + %s => %s\n", argv[1], argv[2], string);
  return 0;
  }
