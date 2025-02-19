
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADF_SITES_MASK_SHIFT ;
 int Q_limit ;
 int * R ;
 int R_cnt ;
 int R_position ;
 int __and_mask ;
 long long __cat_mask ;
 scalar_t__ __exclude_ad_id ;
 int __use_factor ;
 scalar_t__ __use_views_limit ;
 int __xor_mask ;
 int heap_push_user_ad ;
 int heap_push_user_ad_ext ;
 int heap_push_user_ad_std ;
 int memset (int *,int ,int) ;
 int perform_query (int ) ;

int perform_pricing (int position, int flags, int and_mask, int xor_mask) {
  int res;
  if (position <= 0 || position > 100) { return -1; }
  R_position = position;

  if (Q_limit <= 0) { Q_limit = 1000; }
  if (Q_limit > 10000) { Q_limit = 10000; }
  memset (R, 0, Q_limit * sizeof(int));

  heap_push_user_ad = (flags & 8) ? heap_push_user_ad_ext : heap_push_user_ad_std;
  __use_factor = 1;
  __use_views_limit = 0;
  __exclude_ad_id = 0;
  __and_mask = (and_mask & 0xff) << ADF_SITES_MASK_SHIFT;
  __xor_mask = (xor_mask & 0xff) << ADF_SITES_MASK_SHIFT;
  __cat_mask = -1LL;

  res = perform_query (0);

  __use_factor = 0;
  __use_views_limit = 0;
  __and_mask = (254 << ADF_SITES_MASK_SHIFT);
  __xor_mask = 0;

  R_position = 0;
  if (res > 0) {
    R_cnt = Q_limit;
    while (R_cnt && !R[R_cnt-1]) { R_cnt--; }
  }
  return res;
}
