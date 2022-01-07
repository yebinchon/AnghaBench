
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int assert (int) ;
 void** hcyf ;

const char *get_bytes (unsigned char *a, int len) {
  static char buf[16384];
  char *p = buf, *e = buf + sizeof (buf);
  int i;
  for (i = 0; i < len; i++) {
    assert (p + 3 <= e);
    *p++ = ' ';
    *p++ = hcyf[(a[i] >> 4) & 15];
    *p++ = hcyf[a[i] & 15];
  }
  assert (p < e);
  *p = 0;
  return buf + 1;
}
