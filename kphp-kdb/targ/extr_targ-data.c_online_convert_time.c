
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OLIST_COUNT ;
 int assert (int) ;
 scalar_t__ is_valid_online_stamp (int) ;
 int ocur_now ;
 int ocur_ptr ;

__attribute__((used)) static inline int online_convert_time (int ts) {
  assert (ocur_now && is_valid_online_stamp (ts));
  if (ts > ocur_now) {
    return ocur_ptr;
  }
  int res = ts - ocur_now + ocur_ptr;
  if (res < 0) {
    res += OLIST_COUNT;
  }
  assert (res >= 0 && res < OLIST_COUNT);
  return res;
}
