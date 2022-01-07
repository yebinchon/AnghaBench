
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int decNumber ;
struct TYPE_5__ {int digits; scalar_t__ traps; } ;
typedef TYPE_1__ decContext ;


 int DECNUMDIGITS ;
 int DEC_INIT_BASE ;
 int decContextDefault (TYPE_1__*,int ) ;
 int decContextTestEndian (int ) ;
 int decNumberAdd (int *,int *,int *,TYPE_1__*) ;
 int decNumberFromString (int *,char*,TYPE_1__*) ;
 int decNumberToString (int *,char*) ;
 int printf (char*,...) ;

int main(int argc, char *argv[]) {
  decNumber a, b;
  decContext set;
  char string[DECNUMDIGITS+14];

  decContextTestEndian(0);

  if (argc<3) {
    printf("Please supply two numbers to add.\n");
    return 1;
    }
  decContextDefault(&set, DEC_INIT_BASE);
  set.traps=0;
  set.digits=DECNUMDIGITS;

  decNumberFromString(&a, argv[1], &set);
  decNumberFromString(&b, argv[2], &set);

  decNumberAdd(&a, &a, &b, &set);
  decNumberToString(&a, string);

  printf("%s + %s => %s\n", argv[1], argv[2], string);
  return 0;
  }
