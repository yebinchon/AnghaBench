
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void swap_exit_signal_bytes (unsigned *x) {
  unsigned a = *x, b = a >> 16, c = a & 0xffff, d = c >> 8, e = c & 0xff;
  *x = (b << 16) | (e << 8) | d;
}
