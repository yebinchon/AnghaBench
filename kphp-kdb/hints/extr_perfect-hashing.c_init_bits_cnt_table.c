
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* bits_cnt_tbl ;

void init_bits_cnt_table() {
  static int f = 0;
  if (f) {
    return;
  }
  f = 1;

  int i;
  bits_cnt_tbl[0] = 0;
  for (i = 1; i < (1 << 16); i++) {
    bits_cnt_tbl[i] = 1 + bits_cnt_tbl[i & (i - 1)];
  }
}
