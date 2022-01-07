
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_int_array {int pos; } ;



int tl_int_array_mark (struct tl_int_array *a) {
  return a->pos;
}
