
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int yearspack ;
typedef int uint8_t ;
typedef int startpack ;
typedef int respack ;
typedef int ratepack ;
typedef int int32_t ;
typedef int decNumber ;
struct TYPE_9__ {int digits; scalar_t__ traps; } ;
typedef TYPE_1__ decContext ;


 int DEC_INIT_BASE ;
 int decContextDefault (TYPE_1__*,int ) ;
 int decNumberAdd (int *,int *,int *,TYPE_1__*) ;
 int decNumberDivide (int *,int *,int *,TYPE_1__*) ;
 int decNumberFromString (int *,char*,TYPE_1__*) ;
 int decNumberMultiply (int *,int *,int *,TYPE_1__*) ;
 int decNumberPower (int *,int *,int *,TYPE_1__*) ;
 int decNumberRescale (int *,int *,int *,TYPE_1__*) ;
 int decPackedFromNumber (int*,int,int*,int *) ;
 int decPackedToNumber (int*,int,int*,int *) ;
 int printf (char*,char*,...) ;
 int sprintf (char*,char*,int) ;

int main(int argc, char *argv[]) {
  {
  decNumber one, mtwo, hundred;
  decNumber start, rate, years;
  decNumber total;
  decContext set;

  uint8_t startpack[]={0x01, 0x00, 0x00, 0x0C};
  int32_t startscale=0;
  uint8_t ratepack[]={0x06, 0x5C};
  int32_t ratescale=1;
  uint8_t yearspack[]={0x02, 0x0C};
  int32_t yearsscale=0;
  uint8_t respack[16];
  int32_t resscale;
  char hexes[49];
  int i;

  if (argc<0) printf("%s", argv[1]);

  decContextDefault(&set, DEC_INIT_BASE);
  set.traps=0;
  set.digits=25;
  decNumberFromString(&one, "1", &set);
  decNumberFromString(&mtwo, "-2", &set);
  decNumberFromString(&hundred, "100", &set);

  decPackedToNumber(startpack, sizeof(startpack), &startscale, &start);
  decPackedToNumber(ratepack, sizeof(ratepack), &ratescale, &rate);
  decPackedToNumber(yearspack, sizeof(yearspack), &yearsscale, &years);

  decNumberDivide(&rate, &rate, &hundred, &set);
  decNumberAdd(&rate, &rate, &one, &set);
  decNumberPower(&rate, &rate, &years, &set);
  decNumberMultiply(&total, &rate, &start, &set);
  decNumberRescale(&total, &total, &mtwo, &set);

  decPackedFromNumber(respack, sizeof(respack), &resscale, &total);


  for (i=0; i<16; i++) {
    sprintf(&hexes[i*3], "%02x ", respack[i]);
    }
  printf("Result: %s (scale=%ld)\n", hexes, (long int)resscale);

  }
  return 0;
  }
