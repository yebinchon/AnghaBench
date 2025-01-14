
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* weights; } ;
typedef TYPE_1__ user_t ;
struct TYPE_5__ {int relaxation_time; int* values; } ;


 int * TAT ;
 TYPE_1__* get_user (int) ;
 int targ_weights_last_update_time ;
 TYPE_2__* targ_weights_vector_alloc () ;
 int time_amortization_table_fast_exp (int ,int const) ;
 int weights_coords ;
 int weights_small_updates ;

int targ_weights_small_update (int vector_id, int coord_id, int relaxation_time, int value) {
  if (coord_id < 0 || coord_id >= weights_coords || TAT == ((void*)0)) {
    return -1;
  }
  user_t *U = get_user (vector_id);
  if (U == ((void*)0)) {
    return -1;
  }
  if (U->weights == ((void*)0)) {
    U->weights = targ_weights_vector_alloc ();
  }
  const int dt = relaxation_time - U->weights->relaxation_time;
  if (dt > 0) {
    int i;
    if (targ_weights_last_update_time < relaxation_time) {
      targ_weights_last_update_time = relaxation_time;
    }
    for (i = 0; i < weights_coords; i++) {
      U->weights->values[i] *= time_amortization_table_fast_exp (TAT[i], dt);
    }
    U->weights->relaxation_time = relaxation_time;
  }
  U->weights->values[coord_id] = value * (1.0 / 1073741824.0);
  weights_small_updates++;
  return 0;
}
