
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int targ_weights_vector_t ;


 int get_vector_size () ;
 int tot_weights_vector_bytes ;
 int tot_weights_vectors ;
 int * zmalloc0 (int) ;

targ_weights_vector_t *targ_weights_vector_alloc (void) {
  int sz = get_vector_size ();
  tot_weights_vectors++;
  tot_weights_vector_bytes += sz;
  return zmalloc0 (sz);
}
