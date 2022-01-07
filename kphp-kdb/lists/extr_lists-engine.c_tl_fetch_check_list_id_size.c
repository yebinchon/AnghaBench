
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TL_ERROR_BAD_VALUE ;
 int list_id_ints ;
 int tl_fetch_int () ;
 int tl_fetch_set_error_format (int ,char*,int,int) ;

int tl_fetch_check_list_id_size (void) {
  int x = tl_fetch_int ();
  if (x != list_id_ints) {
    tl_fetch_set_error_format (TL_ERROR_BAD_VALUE, "Wrong number of ints in list_id: should be %d, present %d", list_id_ints, x);
    return -1;
  }
  return 0;
}
