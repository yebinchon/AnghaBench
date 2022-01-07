
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ll ;
struct TYPE_2__ {scalar_t__ h; } ;
typedef TYPE_1__ entry_t ;



int entry_t_cmp (const void *a, const void *b) {
  ll x = ((entry_t *)a)->h, y = ((entry_t *)b)->h;
  if (x < y) {
    return -1;
  }
  if (x > y) {
    return 1;
  }
  return 0;
}
