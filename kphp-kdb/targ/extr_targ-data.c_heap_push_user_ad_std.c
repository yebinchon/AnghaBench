
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intree_node {int x; int z; } ;
struct advert {int flags; scalar_t__ recent_views; scalar_t__ recent_views_limit; scalar_t__ price; } ;


 int ADF_LIMIT_VIEWS ;
 int __and_mask ;
 int __exclude_ad_id ;
 scalar_t__ __use_views_limit ;
 int __user_id ;
 int __xor_mask ;
 double calculate_expected_view_gain (struct advert*,int,int ) ;
 struct advert* get_ad (int) ;
 int heap_insert (double,struct advert*,int) ;

int heap_push_user_ad_std (struct intree_node *N) {
  int ad_id = N->x;
  if (ad_id == __exclude_ad_id) {
    return 1;
  }
  int views = N->z;
  struct advert *A = get_ad (ad_id);
  if ((A->flags ^ __xor_mask) & __and_mask) {
    return 1;
  }
  if (__use_views_limit && A->recent_views >= A->recent_views_limit) {
    return 1;
  }
  if ((A->flags & ADF_LIMIT_VIEWS) && A->price <= 0 && views >= 100) {
    return 1;
  }
  double expected_gain = calculate_expected_view_gain (A, views, __user_id);
  heap_insert (expected_gain, A, views);
  return 1;
}
