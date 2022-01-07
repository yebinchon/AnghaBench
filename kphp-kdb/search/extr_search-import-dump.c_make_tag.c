
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int make_tag (char *tag, int type, unsigned value) {
  char *p = tag;
  *p++ = 0x1f;
  *p++ = type;
  while (value >= 0x40) {
    *p++ = 0x80 + (value & 0x7f);
    value >>= 7;
  }
  *p++ = 0x40 + value;
  *p = 0;
  return p - tag;
}
