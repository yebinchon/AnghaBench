
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int counters_mask; } ;
typedef TYPE_1__ weights_vector_t ;
struct TYPE_10__ {struct TYPE_10__* next; } ;
typedef TYPE_2__ weights_counters_t ;


 int assert (TYPE_2__*) ;
 int tot_counters_arrays ;
 TYPE_2__* zmalloc0 (int) ;

__attribute__((used)) static weights_counters_t *alloc_counter (weights_vector_t *V, weights_counters_t *prev, weights_counters_t *cur, int k) {
  tot_counters_arrays++;
  weights_counters_t *D = zmalloc0 (sizeof (weights_counters_t));
  D->next = cur;
  assert (prev);
  prev->next = D;
  V->counters_mask |= 1 << k;
  return D;
}
