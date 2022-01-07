
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct time_amortization_table {double* hi_exp; double* lo_exp; int c; } ;


 int AMORTIZATION_TABLE_SQRT_SIZE ;
 int AMORTIZATION_TABLE_SQRT_SIZE_BITS ;
 int AMORTIZATION_TABLE_SQRT_SIZE_MASK ;
 double exp (int) ;

inline double time_amortization_table_fast_exp (struct time_amortization_table *self, int dt) {
  return (dt < AMORTIZATION_TABLE_SQRT_SIZE * AMORTIZATION_TABLE_SQRT_SIZE) ?
          self->hi_exp[dt >> AMORTIZATION_TABLE_SQRT_SIZE_BITS] * self->lo_exp[dt & AMORTIZATION_TABLE_SQRT_SIZE_MASK] :
          exp (self->c * dt);
}
