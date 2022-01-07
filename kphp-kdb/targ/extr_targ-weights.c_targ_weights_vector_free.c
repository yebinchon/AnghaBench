
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int targ_weights_vector_t ;


 int get_vector_size () ;
 int tot_weights_vector_bytes ;
 int tot_weights_vectors ;
 int zfree (int *,int) ;

void targ_weights_vector_free (targ_weights_vector_t *V) {
  int sz = get_vector_size ();
  tot_weights_vectors--;
  tot_weights_vector_bytes -= sz;
  zfree (V, sz);
}
