
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int decNumber ;
struct TYPE_6__ {int digits; int status; } ;
typedef TYPE_1__ decContext ;


 int DECNUMDIGITS ;
 int DEC_Errors ;
 int DEC_INIT_BASE ;
 int SIGFPE ;
 int decContextDefault (TYPE_1__*,int ) ;
 char* decContextStatusToString (TYPE_1__*) ;
 int decNumberAdd (int *,int *,int *,TYPE_1__*) ;
 int decNumberFromString (int *,char*,TYPE_1__*) ;
 int decNumberToString (int *,char*) ;
 int preserve ;
 int printf (char*,...) ;
 int setjmp (int ) ;
 int signal (int ,int ) ;
 int signalHandler ;

int main(int argc, char *argv[]) {
  decNumber a, b;
  decContext set;
  char string[DECNUMDIGITS+14];
  int value;

  if (argc<3) {
    printf("Please supply two numbers to add.\n");
    return 1;
    }
  decContextDefault(&set, DEC_INIT_BASE);


  signal(SIGFPE, signalHandler);
  value=setjmp(preserve);
  if (value) {
    set.status &= DEC_Errors;
    printf("Signal trapped [%s].\n", decContextStatusToString(&set));
    return 1;
    }




  set.digits=DECNUMDIGITS;

  decNumberFromString(&a, argv[1], &set);
  decNumberFromString(&b, argv[2], &set);

  decNumberAdd(&a, &a, &b, &set);
  decNumberToString(&a, string);

  printf("%s + %s => %s\n", argv[1], argv[2], string);
  return 0;
  }
