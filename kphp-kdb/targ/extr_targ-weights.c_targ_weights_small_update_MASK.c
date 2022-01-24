#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_2__* weights; } ;
typedef  TYPE_1__ user_t ;
struct TYPE_5__ {int relaxation_time; int* values; } ;

/* Variables and functions */
 int /*<<< orphan*/ * TAT ; 
 TYPE_1__* FUNC0 (int) ; 
 int targ_weights_last_update_time ; 
 TYPE_2__* FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int const) ; 
 int weights_coords ; 
 int /*<<< orphan*/  weights_small_updates ; 

int FUNC3 (int vector_id, int coord_id, int relaxation_time, int value) {
  if (coord_id < 0 || coord_id >= weights_coords || TAT == NULL) {
    return -1;
  }
  user_t *U = FUNC0 (vector_id);
  if (U == NULL) {
    return -1;
  }
  if (U->weights == NULL) {
    U->weights = FUNC1 ();
  }
  const int dt = relaxation_time - U->weights->relaxation_time;
  if (dt > 0) {
    int i;
    if (targ_weights_last_update_time < relaxation_time) {
      targ_weights_last_update_time = relaxation_time;
    }
    for (i = 0; i < weights_coords; i++) {
      U->weights->values[i] *= FUNC2 (TAT[i], dt);
    }
    U->weights->relaxation_time = relaxation_time;
  }
  U->weights->values[coord_id] = value * (1.0 / 1073741824.0);
  weights_small_updates++;
  return 0;
}