
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TL_ERROR_BAD_VALUE ;
 int tl_fetch_int () ;
 int tl_fetch_set_error_format (int ,char*) ;

int tl_parse_local_id (void) {
  int local_id = tl_fetch_int ();
  if (local_id <= 0) {
    tl_fetch_set_error_format (TL_ERROR_BAD_VALUE, "Local id must be positive integer");
    return -1;
  }
  return local_id;
}
