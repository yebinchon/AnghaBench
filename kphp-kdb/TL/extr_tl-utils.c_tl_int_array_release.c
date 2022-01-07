
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_int_array {int pos; } ;



void tl_int_array_release (struct tl_int_array *a, int mark) {
  a->pos = mark;
}
