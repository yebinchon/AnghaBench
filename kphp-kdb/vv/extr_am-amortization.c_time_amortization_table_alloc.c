
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int refcnt; int c; int T; double* hi_exp; double* lo_exp; } ;
typedef TYPE_1__ time_amortization_table_t ;


 int AMORTIZATION_TABLE_SQRT_SIZE ;
 int M_LN2 ;
 double exp (int) ;
 TYPE_1__* zmalloc (int) ;

time_amortization_table_t *time_amortization_table_alloc (int T) {
  int i;
  time_amortization_table_t *self = zmalloc (sizeof (time_amortization_table_t));
  self->refcnt = 1;
  self->c = -(M_LN2 / T);
  self->T = T;
  const double hi_mult = exp (self->c * AMORTIZATION_TABLE_SQRT_SIZE), lo_mult = exp (self->c);
  self->hi_exp[0] = self->lo_exp[0] = 1.0;
  for (i = 1; i < AMORTIZATION_TABLE_SQRT_SIZE; i++) {
    self->hi_exp[i] = self->hi_exp[i-1] * hi_mult;
    self->lo_exp[i] = self->lo_exp[i-1] * lo_mult;
  }
  return self;
}
