
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_int_array {int pos; int size; int * buff; } ;



int tl_int_array_append_long (struct tl_int_array *a, long long l) {
  if (a->pos >= a->size - 1) {
    return -1;
  }
  *((long long *) (&a->buff[a->pos])) = l;
  a->pos += 2;
  return 0;
}
