
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tl_type {int constructors_num; TYPE_1__** constructors; } ;
struct TYPE_2__ {int id; } ;


 int strcmp (int ,char*) ;

int get_constructor (struct tl_type *t, char *id) {
  int i;
  for (i = 0; i < t->constructors_num; i++) if (!strcmp (t->constructors[i]->id, id)) {
    return i;
  }
  return -1;
}
