
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* blist ;



int blist_max_size (blist x, int tot_items, int len) {
  if (x == ((void*)0)) {
    return 0;
  }

  return x[0];
}
