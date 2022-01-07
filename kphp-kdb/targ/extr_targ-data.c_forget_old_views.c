
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CV_r ;
 scalar_t__ VIEWS_STATS_INTERVAL ;
 int forget_old_views_upto (int ,scalar_t__) ;
 scalar_t__ log_last_ts ;

void forget_old_views (void) {
  CV_r = forget_old_views_upto (CV_r, log_last_ts - VIEWS_STATS_INTERVAL);
}
