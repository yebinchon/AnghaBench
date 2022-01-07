
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double* hi_exp; double* lo_exp; int c; } ;
typedef TYPE_1__ time_amortization_table_t ;


 int AMORTIZATION_TABLE_SQRT_SIZE ;
 int AMORTIZATION_TABLE_SQRT_SIZE_BITS ;
 int AMORTIZATION_TABLE_SQRT_SIZE_MASK ;
 double exp (int) ;

double time_amortization_table_fast_exp (time_amortization_table_t *self, int dt) {
  return (dt < AMORTIZATION_TABLE_SQRT_SIZE * AMORTIZATION_TABLE_SQRT_SIZE) ?
          self->hi_exp[dt >> AMORTIZATION_TABLE_SQRT_SIZE_BITS] * self->lo_exp[dt & AMORTIZATION_TABLE_SQRT_SIZE_MASK] :
          exp (self->c * dt);
}
