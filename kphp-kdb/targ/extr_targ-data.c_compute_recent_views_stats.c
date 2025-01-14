
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cyclic_views_entry {int ad_id; } ;


 struct cyclic_views_entry* CV_r ;
 struct cyclic_views_entry* CV_w ;
 struct cyclic_views_entry* CViews ;
 int CYCLIC_VIEWS_BUFFER_SIZE ;
 int MAX_USERS ;
 int Q_limit ;
 scalar_t__ R ;
 scalar_t__ R_cnt ;
 int assert (int) ;
 int get_recent_views_num () ;
 int postprocess_recent_list (int) ;

int compute_recent_views_stats (void) {
  if (!Q_limit) {
    R_cnt = 0;
    return get_recent_views_num ();
  }
  assert (CYCLIC_VIEWS_BUFFER_SIZE <= MAX_USERS / 2);
  struct cyclic_views_entry *from;
  long long *dest = (long long *) R;

  if (CV_r > CV_w) {
    for (from = CV_r; from < CViews + CYCLIC_VIEWS_BUFFER_SIZE; from++) {
      *dest++ = from->ad_id;
    }
    for (from = CViews; from < CV_w; from++) {
      *dest++ = from->ad_id;
    }
  } else {
    for (from = CV_r; from < CV_w; from++) {
      *dest++ = from->ad_id;
    }
  }
  int cnt = dest - (long long *)R;
  return postprocess_recent_list (cnt);
}
