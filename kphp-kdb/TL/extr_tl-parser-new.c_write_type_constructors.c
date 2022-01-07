
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_type {int constructors_num; int * constructors; } ;


 int write_constructor (int ) ;

void write_type_constructors (struct tl_type *t) {
  int i;
  for (i = 0; i < t->constructors_num; i++) {
    write_constructor (t->constructors[i]);
  }
}
