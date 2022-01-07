
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CV_r ;
 scalar_t__ CViews ;
 scalar_t__ CYCLIC_VIEWS_BUFFER_SIZE ;
 int forget_view (scalar_t__) ;

void forget_one_view (void) {
  forget_view (CV_r);
  if (++CV_r == CViews + CYCLIC_VIEWS_BUFFER_SIZE) {
    CV_r = CViews;
  }
}
