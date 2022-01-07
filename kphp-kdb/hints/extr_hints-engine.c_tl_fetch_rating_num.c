
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TL_ERROR_BAD_VALUE ;
 int check_rating_num (int) ;
 scalar_t__ tl_fetch_error () ;
 int tl_fetch_int () ;
 int tl_fetch_set_error_format (int ,char*,int) ;

int tl_fetch_rating_num (void) {
  if (tl_fetch_error()) {
    return 0;
  }
  int num = tl_fetch_int();
  if (!check_rating_num (num)) {
    tl_fetch_set_error_format (TL_ERROR_BAD_VALUE, "Wrong rating num %d", num);
  }
  return num;
}
