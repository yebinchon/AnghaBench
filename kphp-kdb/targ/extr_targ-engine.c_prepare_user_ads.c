
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int compute_user_ads (int,int,int,int,int,long long) ;

__attribute__((used)) static int prepare_user_ads (int uid, int limit, int flags, int and_mask, int xor_mask, char *buffer, long long cat_mask) {
  if (limit < 0) {
    return -1;
  }
  if (limit > 16384) {
    limit = 16384;
  }

  int res = compute_user_ads (uid, limit, flags, and_mask, xor_mask, cat_mask);
  if (res < 0) {
    return -1;
  }
  if (res > limit) {
    res = limit;
  }
  if (flags & 7) {
    res *= (flags & 1) + ((flags >> 1) & 1) + ((flags >> 2) & 1) + 1;
  }

  return res;
}
