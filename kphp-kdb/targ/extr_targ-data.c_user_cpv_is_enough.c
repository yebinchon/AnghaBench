
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user {int active_ads; } ;
struct TYPE_2__ {double expected_gain; } ;


 int ADF_SITES_MASK_SHIFT ;
 double CTR_GAIN_PRICE_MULTIPLIER ;
 int GSORT_HEAP_SIZE ;
 TYPE_1__* H ;
 int HN ;
 int MAX_USERS ;
 struct user** User ;
 int __and_mask ;
 scalar_t__ __exclude_ad_id ;
 int __use_factor ;
 scalar_t__ __use_views_limit ;
 int __xor_mask ;
 int build_user_ad_heap (struct user*,int) ;
 int heap_push_user_ad ;
 int heap_push_user_ad_ext ;

int user_cpv_is_enough (int uid, int position, int ad_cpv, int and_mask, int xor_mask) {
  if (uid < 0 || uid >= MAX_USERS || position <= 0 || position >= GSORT_HEAP_SIZE) {
    return 0;
  }

  struct user *U = User[uid];
  if (!U) {
    return 0;
  }

  if (!U->active_ads) {
    return 1;
  }

  heap_push_user_ad = heap_push_user_ad_ext;
  __use_factor = 1;
  __use_views_limit = 0;
  __exclude_ad_id = 0;
  __and_mask = (and_mask & 0xff) << ADF_SITES_MASK_SHIFT;
  __xor_mask = (xor_mask & 0xff) << ADF_SITES_MASK_SHIFT;

  build_user_ad_heap (U, position);

  __use_factor = 0;
  __use_views_limit = 0;
  __and_mask = (254 << ADF_SITES_MASK_SHIFT);
  __xor_mask = 0;

  if (HN < position) {
    return 1;
  }

  return ad_cpv > (int) (H[1].expected_gain * CTR_GAIN_PRICE_MULTIPLIER + 0.5);
}
