
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long dyn_cur ;

void huffman_dealloc (long long *table, long N) {
  dyn_cur += N * 8;
}
