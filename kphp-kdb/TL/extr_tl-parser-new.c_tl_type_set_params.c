
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_type {int flags; int params_num; long long params_types; char* id; } ;


 int fprintf (int ,char*,char*) ;
 int stderr ;

int tl_type_set_params (struct tl_type *t, int x, long long y) {
  if (t->flags & 4) {
    t->params_num = x;
    t->params_types = y;
    t->flags &= ~4;
  } else {
    if (t->params_num != x || t->params_types != y) {
      fprintf (stderr, "Wrong num of params (type %s)\n", t->id);
      return 0;
    }
  }
  return 1;
}
