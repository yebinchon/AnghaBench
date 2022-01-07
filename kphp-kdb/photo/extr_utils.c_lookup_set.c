
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int real_n; int new_v; } ;
typedef TYPE_1__ lookup ;


 int lookup_conv (TYPE_1__*,int,int ) ;
 int* map_int_int_add (int *,int) ;

void lookup_set (lookup *l, int x, int y) {






  *map_int_int_add (&l->new_v, x) = y;
}
