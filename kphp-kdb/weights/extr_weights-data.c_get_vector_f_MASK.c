#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int vector_id; int counters_mask; struct TYPE_7__* hnext; } ;
typedef  TYPE_1__ weights_vector_t ;

/* Variables and functions */
 TYPE_1__** H ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  tot_counters_arrays ; 
 int /*<<< orphan*/  tot_vectors ; 
 int vector_hash_prime ; 
 TYPE_1__* FUNC2 (int) ; 

weights_vector_t *FUNC3 (int vector_id, int force) {
  const int h = vector_id % vector_hash_prime;
  weights_vector_t **p = &H[h], *V;
  while (*p) {
    V = *p;
    if (V->vector_id == vector_id) {
      *p = V->hnext;
      if (force >= 0) {
        V->hnext = H[h];
        H[h] = V;
      } else {
        FUNC1 (V);
      }
      return V;
    }
    p = &V->hnext;
  }
  if (force > 0) {
    tot_vectors++;
    tot_counters_arrays++;
    V = FUNC2 (sizeof (weights_vector_t));
    V->counters_mask = 1;
    V->vector_id = vector_id;
    V->hnext = H[h];
    FUNC0 (V);
    return H[h] = V;
  }
  return NULL;
}