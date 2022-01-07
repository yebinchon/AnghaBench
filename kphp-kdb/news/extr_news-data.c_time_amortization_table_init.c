
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int T; int c; double* hi_exp; double* lo_exp; } ;


 int AMORTIZATION_TABLE_SQRT_SIZE ;
 int M_LN2 ;
 TYPE_1__ TAT ;
 double exp (int) ;

__attribute__((used)) static void time_amortization_table_init (int T) {
  int i;
  if (TAT.T == T) { return; }
  TAT.c = -(M_LN2 / T);
  TAT.T = T;
  double hi_mult = exp (TAT.c * AMORTIZATION_TABLE_SQRT_SIZE);
  double lo_mult = exp (TAT.c);
  TAT.hi_exp[0] = TAT.lo_exp[0] = 1.0;
  for (i = 1; i < AMORTIZATION_TABLE_SQRT_SIZE; i++) {
    TAT.hi_exp[i] = TAT.hi_exp[i-1] * hi_mult;
    TAT.lo_exp[i] = TAT.lo_exp[i-1] * lo_mult;
  }
}
