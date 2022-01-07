
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* f_size ;

int cmp_fid (const void *a, const void *b) {
  return f_size[*(int *)b] == f_size[*(int *)a] ? *(int *)a - *(int *)b : f_size[*(int *)b] - f_size[*(int *)a];
}
