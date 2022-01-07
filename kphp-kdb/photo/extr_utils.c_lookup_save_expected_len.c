
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n; int new_v; } ;
typedef TYPE_1__ lookup ;


 int map_int_int_used (int *) ;

int lookup_save_expected_len (lookup *l) {
  return map_int_int_used (&l->new_v) + l->n;
}
