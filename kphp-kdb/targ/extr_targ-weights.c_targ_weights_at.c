
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int relaxation_time; double* values; } ;
typedef TYPE_1__ targ_weights_vector_t ;


 int * TAT ;
 int log_last_ts ;
 double time_amortization_table_fast_exp (int ,int const) ;
 int weights_coords ;

double targ_weights_at (targ_weights_vector_t *weights, int coord_id) {
  if (weights == ((void*)0) || coord_id < 0 || coord_id >= weights_coords || TAT == ((void*)0)) {
    return 0.0;
  }
  const int dt = log_last_ts - weights->relaxation_time;
  double r = weights->values[coord_id];
  if (dt > 0) {
    r *= time_amortization_table_fast_exp (TAT[coord_id], dt);
  }
  return r;
}
