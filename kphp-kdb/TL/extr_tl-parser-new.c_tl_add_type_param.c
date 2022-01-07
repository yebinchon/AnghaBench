
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_type {int flags; int params_num; unsigned long long params_types; } ;


 int assert (int) ;

void tl_add_type_param (struct tl_type *t, int x) {
  assert (t->flags & 4);
  assert (t->params_num <= 64);
  if (x) {
    t->params_types |= (1ull << (t->params_num ++));
  } else {
    t->params_num ++;
  }
}
