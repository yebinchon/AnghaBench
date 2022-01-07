
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_int_array {int pos; int size; int * buff; } ;



int tl_int_array_append_double (struct tl_int_array *a, double d) {
  if (a->pos >= a->size - 1) {
    return -1;
  }
  *((double *) (&a->buff[a->pos])) = d;
  a->pos += 2;
  return 0;
}
