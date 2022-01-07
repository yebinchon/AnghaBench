
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long long tl_fetch_long_range (int ,int) ;

__attribute__((used)) static inline long long tl_fetch_nonnegative_long (void) {
  return tl_fetch_long_range (0, 0x7fffffffffffffffll);
}
