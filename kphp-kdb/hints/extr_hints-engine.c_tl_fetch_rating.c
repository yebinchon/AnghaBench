
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TL_ERROR_BAD_VALUE ;
 int check_rating (double) ;
 double tl_fetch_double () ;
 scalar_t__ tl_fetch_error () ;
 int tl_fetch_set_error_format (int ,char*,double) ;

double tl_fetch_rating (void) {
  if (tl_fetch_error()) {
    return 0;
  }
  double val = tl_fetch_double();
  if (!check_rating (val)) {
    tl_fetch_set_error_format (TL_ERROR_BAD_VALUE, "Wrong rating %.6lf", val);
  }
  return val;
}
