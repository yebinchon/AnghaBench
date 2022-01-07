
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TL_ERROR_BAD_VALUE ;
 int check_photo_id (int) ;
 scalar_t__ tl_fetch_error () ;
 int tl_fetch_int () ;
 int tl_fetch_set_error_format (int ,char*,int) ;

int tl_fetch_photo_id (void) {
  if (tl_fetch_error()) {
    return 0;
  }
  int pid = tl_fetch_int();
  if (!check_photo_id (pid)) {
    tl_fetch_set_error_format (TL_ERROR_BAD_VALUE, "Wrong photo_id %d", pid);
  }
  return pid;
}
