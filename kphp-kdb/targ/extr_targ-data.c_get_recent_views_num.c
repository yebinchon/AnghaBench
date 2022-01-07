
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CV_r ;
 int CV_w ;
 int subtract_CV (int ,int ) ;

int get_recent_views_num (void) {
  return subtract_CV (CV_r, CV_w);
}
