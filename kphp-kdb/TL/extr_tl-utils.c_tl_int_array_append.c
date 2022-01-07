
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_int_array {scalar_t__ pos; scalar_t__ size; int* buff; } ;



int tl_int_array_append (struct tl_int_array *a, int i) {
  if (a->pos >= a->size) {
    return -1;
  }
  a->buff[(a->pos)++] = i;
  return 0;
}
