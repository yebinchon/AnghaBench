
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* bytes; } ;
typedef TYPE_1__ decimal64 ;
typedef int decNumber ;
typedef int decContext ;


 int DECIMAL64_String ;
 int DEC_INIT_DECIMAL64 ;
 int decContextDefault (int *,int ) ;
 int decNumberToString (int *,char*) ;
 int decimal64FromString (TYPE_1__*,char*,int *) ;
 int decimal64ToNumber (TYPE_1__*,int *) ;
 int printf (char*,...) ;
 int sprintf (char*,char*,int) ;

int main(int argc, char *argv[]) {
  decimal64 a;
  decNumber d;
  decContext set;
  char string[DECIMAL64_String];
  char hexes[25];
  int i;

  if (argc<2) {
    printf("Please supply a number.\n");
    return 1;
    }
  decContextDefault(&set, DEC_INIT_DECIMAL64);

  decimal64FromString(&a, argv[1], &set);

  for (i=0; i<8; i++) {
    sprintf(&hexes[i*3], "%02x ", a.bytes[i]);
    }
  decimal64ToNumber(&a, &d);
  decNumberToString(&d, string);
  printf("%s => %s=> %s\n", argv[1], hexes, string);
  return 0;
  }
