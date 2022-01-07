
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int item_t ;


 long long const INT_MIN ;
 scalar_t__ Q_hash_rating ;
 long long get_hash_item (int const*) ;
 int get_rate_item_fast (int const*,scalar_t__) ;

long long extract_hash_item (const item_t *I) {
  if (Q_hash_rating < 0) {
    return get_hash_item (I);
  }
  const int rate = get_rate_item_fast (I, Q_hash_rating);
  if (rate > 0) {
    return rate;
  }
  const long long h = get_hash_item (I);
  if (h > 0 && h < INT_MIN) {
    return 0;
  }
  return h;
}
