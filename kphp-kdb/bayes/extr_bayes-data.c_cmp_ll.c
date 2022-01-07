
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ll ;



int cmp_ll (const void *_x, const void *_y) {
  ll x = *(ll *)_x, y = *(ll *)_y;
  if (x < y) {
    return -1;
  } else if (y < x) {
    return 1;
  }
  return 0;
}
