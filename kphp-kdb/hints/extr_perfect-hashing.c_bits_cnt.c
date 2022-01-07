
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* bits_cnt_tbl ;

inline int bits_cnt (int x) {
  return bits_cnt_tbl[x & 0xffff] + bits_cnt_tbl[(x >> 16) & 0xffff];
}
