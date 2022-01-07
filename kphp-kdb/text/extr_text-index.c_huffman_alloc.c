
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 scalar_t__ dyn_cur ;
 scalar_t__ dyn_top ;

long long *huffman_alloc (long long N) {
  assert ((long long) (dyn_top - dyn_cur) >= N * 8);
  return (long long *) dyn_cur;
}
