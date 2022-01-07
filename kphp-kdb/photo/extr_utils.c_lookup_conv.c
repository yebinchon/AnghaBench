
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n; int* y; int x; int new_v; } ;
typedef TYPE_1__ lookup ;


 int dl_find_int (int ,int,int) ;
 int* map_int_int_get (int *,int) ;

int lookup_conv (lookup *l, int x, int none) {
  int *y = map_int_int_get (&l->new_v, x);
  if (y != ((void*)0)) {
    return *y;
  }

  int res = dl_find_int (l->x, l->n, x);
  if (res != l->n) {
    return l->y[res];
  }

  return none;
}
