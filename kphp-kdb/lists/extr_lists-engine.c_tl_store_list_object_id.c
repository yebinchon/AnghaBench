
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int object_id_ints ;
 int tl_store_string_data (void*,int) ;

void tl_store_list_object_id (const int *R, const int *R_end, int mode, int res) {
  const int *Rptr = R;
  int i = 0;
  for (i = 0; i < res; i++) {
    tl_store_string_data ((void *)Rptr, 4 * object_id_ints);
    Rptr += object_id_ints;
  }
}
