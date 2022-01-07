
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {long long x; int y; } ;
typedef TYPE_1__ hmap_pair_ll_int ;


 scalar_t__ H_ADD ;
 int h_pref ;
 TYPE_1__* hmap_ll_int_get (int *,TYPE_1__) ;

int get_pref (long long h) {
  h += H_ADD;
  hmap_pair_ll_int tmp, *ptmp;
  tmp.x = h;
  tmp.y = 0;
  ptmp = hmap_ll_int_get (&h_pref, tmp);
  if (ptmp == ((void*)0)) {
    return 0;
  }

  return ptmp->y;
}
