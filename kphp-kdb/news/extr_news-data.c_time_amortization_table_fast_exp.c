
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double* hi_exp; double* lo_exp; int c; } ;


 int AMORTIZATION_TABLE_SQRT_SIZE ;
 int AMORTIZATION_TABLE_SQRT_SIZE_BITS ;
 int AMORTIZATION_TABLE_SQRT_SIZE_MASK ;
 TYPE_1__ TAT ;
 double exp (int) ;

__attribute__((used)) static inline double time_amortization_table_fast_exp (int dt) {
  return (dt < AMORTIZATION_TABLE_SQRT_SIZE * AMORTIZATION_TABLE_SQRT_SIZE) ?
          TAT.hi_exp[dt >> AMORTIZATION_TABLE_SQRT_SIZE_BITS] * TAT.lo_exp[dt & AMORTIZATION_TABLE_SQRT_SIZE_MASK] :
          exp (TAT.c * dt);
}
