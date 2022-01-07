
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int index_mode ;
 int tl_fetch_set_error_format (int,char*) ;
 scalar_t__ write_only ;

void tl_check_get (void) {
  assert (!index_mode);
  if (write_only) {
    tl_fetch_set_error_format (-4001, "Get operations are unsupported in write_only mode");
  }
}
