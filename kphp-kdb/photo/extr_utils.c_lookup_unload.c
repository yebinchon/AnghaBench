
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n; int * y; int * x; } ;
typedef TYPE_1__ lookup ;



void lookup_unload (lookup *l) {
  l->x = ((void*)0);
  l->y = ((void*)0);
  l->n = -1;
}
