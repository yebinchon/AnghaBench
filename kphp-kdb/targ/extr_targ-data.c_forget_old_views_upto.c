
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cyclic_views_entry {int time; } ;


 struct cyclic_views_entry* CV_w ;
 struct cyclic_views_entry* CViews ;
 int CYCLIC_VIEWS_BUFFER_SIZE ;
 int forget_view (struct cyclic_views_entry*) ;

struct cyclic_views_entry *forget_old_views_upto (struct cyclic_views_entry *CV, int cutoff_time) {
  while (CV != CV_w) {
    if (CV->time > cutoff_time) {
      return CV;
    }
    forget_view (CV);
    if (++CV == CViews + CYCLIC_VIEWS_BUFFER_SIZE) {
      CV = CViews;
      break;
    }
  }
  while (CV < CV_w) {
    if (CV->time > cutoff_time) {
      return CV;
    }
    forget_view (CV);
    CV++;
  }
  return CV;
}
