
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user {int active_ads; } ;
struct TYPE_2__ {double expected_gain; } ;


 double CTR_GAIN_PRICE_MULTIPLIER ;
 int GSORT_HEAP_SIZE ;
 TYPE_1__* H ;
 int HN ;
 int MAX_USERS ;
 struct user** User ;
 int build_user_ad_heap (struct user*,int) ;

int user_ad_price (int uid, int position) {
  if (uid < 0 || uid >= MAX_USERS || position <= 0 || position >= GSORT_HEAP_SIZE) {
    return 0;
  }

  struct user *U = User[uid];
  if (!U || !U->active_ads) {
    return 0;
  }

  build_user_ad_heap (U, position);
  if (HN < position) {
    return 0;
  }

  return (int) (H[1].expected_gain * CTR_GAIN_PRICE_MULTIPLIER + 0.5);
}
