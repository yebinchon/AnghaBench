
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_int_array {int* buff; int size; scalar_t__ pos; } ;



void tl_int_array_init (struct tl_int_array *a, int *buff, int size) {
  a->buff = buff;
  a->size = size;
  a->pos = 0;
}
