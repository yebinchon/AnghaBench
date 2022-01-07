
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
ws_unmask_payload (char *buf, int len, int offset, unsigned char mask[])
{
  int i, j = 0;


  for (i = offset; i < len; ++i, ++j) {
    buf[i] ^= mask[j % 4];
  }
}
