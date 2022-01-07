
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cyclic_views_entry {int user_id; int time; int ad_id; } ;
struct advert {int recent_views; int ad_id; } ;


 struct cyclic_views_entry* CV_r ;
 struct cyclic_views_entry* CV_w ;
 struct cyclic_views_entry* CViews ;
 int CYCLIC_VIEWS_BUFFER_SIZE ;
 int forget_old_views () ;
 int forget_one_view () ;
 int log_last_ts ;

void register_one_view (struct advert *A, int user_id) {
  struct cyclic_views_entry *CV = CV_w;
  CV->ad_id = A->ad_id;
  CV->user_id = user_id;
  CV->time = log_last_ts;
  A->recent_views++;
  if (++CV_w == CViews + CYCLIC_VIEWS_BUFFER_SIZE) {
    CV_w = CViews;
  }
  if (CV_w == CV_r) {
    forget_one_view ();
  }
  forget_old_views ();
}
