
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ OLIST_COUNT ;
 int assert (int) ;
 scalar_t__* ocntT ;

__attribute__((used)) static inline void online_increment (int p, int val) {
  p += OLIST_COUNT;
  assert (ocntT[p] + val >= 0);
  while (p) {
    ocntT[p] += val;
    p >>= 1;
  }
}
