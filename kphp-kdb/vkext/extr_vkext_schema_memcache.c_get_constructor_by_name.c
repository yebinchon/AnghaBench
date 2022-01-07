
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tl_type {int constructors_num; TYPE_1__** constructors; } ;
struct TYPE_2__ {int name; } ;



int get_constructor_by_name (struct tl_type *t, int name) {
  int i;
  for (i = 0; i < t->constructors_num; i++) if (t->constructors[i]->name == name) {
    return i;
  }
  return -1;
}
