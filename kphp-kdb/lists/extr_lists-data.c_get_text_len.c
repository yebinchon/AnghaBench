
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;

int get_text_len (const char *text) {
  int a = *(unsigned char *)text;
  if (a <= 253) {
    return a;
  }
  assert (a == 254);
  return (*(int *)text) & 0x00ffffff;
}
