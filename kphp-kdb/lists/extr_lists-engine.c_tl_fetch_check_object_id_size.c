
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TL_ERROR_BAD_VALUE ;
 int object_id_ints ;
 int tl_fetch_int () ;
 int tl_fetch_set_error_format (int ,char*,int,int) ;

int tl_fetch_check_object_id_size (void) {
  int x = tl_fetch_int ();
  if (x != object_id_ints) {
    tl_fetch_set_error_format (TL_ERROR_BAD_VALUE, "Wrong number of ints in object_id: should be %d, present %d", object_id_ints, x);
    return -1;
  }
  return 0;
}
