
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TL_ERROR_BAD_VALUE ;
 int check_album_id (int) ;
 scalar_t__ tl_fetch_error () ;
 int tl_fetch_int () ;
 int tl_fetch_set_error_format (int ,char*,int) ;

int tl_fetch_album_id (void) {
  if (tl_fetch_error()) {
    return 0;
  }
  int aid = tl_fetch_int();
  if (!check_album_id (aid)) {
    tl_fetch_set_error_format (TL_ERROR_BAD_VALUE, "Wrong album_id %d", aid);
  }
  return aid;
}
