
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fid; int val; } ;


 int assert (int) ;
 TYPE_1__* types ;
 int types_size ;

void add_type (int *x, int *y) {
  assert (types_size < 256);
  types[types_size].fid = *x;
  types[types_size].val = *y;
  types_size++;
}
