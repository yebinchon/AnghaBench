
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_PEND_VIEWS ;
 int* Views ;
 int flush_views (int) ;

__attribute__((used)) static void incr_views (int ad_id, int views) {
  if ((Views[ad_id] += views) >= MAX_PEND_VIEWS) {
    flush_views (ad_id);
  }
}
