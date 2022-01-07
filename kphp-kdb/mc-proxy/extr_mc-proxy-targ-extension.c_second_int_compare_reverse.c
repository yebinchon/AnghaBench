
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int second_int_compare_reverse (const void *a, const void *b) {
  return *(((const int *)b) + 1) - *(((const int *)a) + 1);
}
