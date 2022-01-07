
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n; scalar_t__ real_n; int * y; int * x; int new_v; } ;
typedef TYPE_1__ lookup ;


 int map_int_int_free (int *) ;

void lookup_free (lookup *l) {
  map_int_int_free (&l->new_v);
  l->x = ((void*)0);
  l->y = ((void*)0);
  l->n = -2;




}
