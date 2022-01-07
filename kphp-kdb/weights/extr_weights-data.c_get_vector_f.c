
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int vector_id; int counters_mask; struct TYPE_7__* hnext; } ;
typedef TYPE_1__ weights_vector_t ;


 TYPE_1__** H ;
 int add_use_front (TYPE_1__*) ;
 int del_use (TYPE_1__*) ;
 int tot_counters_arrays ;
 int tot_vectors ;
 int vector_hash_prime ;
 TYPE_1__* zmalloc0 (int) ;

weights_vector_t *get_vector_f (int vector_id, int force) {
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
        del_use (V);
      }
      return V;
    }
    p = &V->hnext;
  }
  if (force > 0) {
    tot_vectors++;
    tot_counters_arrays++;
    V = zmalloc0 (sizeof (weights_vector_t));
    V->counters_mask = 1;
    V->vector_id = vector_id;
    V->hnext = H[h];
    add_use_front (V);
    return H[h] = V;
  }
  return ((void*)0);
}
