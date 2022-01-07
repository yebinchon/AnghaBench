
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHECK (int) ;

int stem_string_to_utf8 (const unsigned char *s, int *v) {
  int n = 0;


  int a, b, c, d;

  while (1) {
    a = *s++;
    if (!(a != 0)) {v[n] = 0; return n;} ;
    if ((a & 0x80) == 0) {
      v[n++] = a;
    } else if ((a & 0x40) == 0) {
      if (!(0)) {v[n] = 0; return n;};
    } else if ((a & 0x20) == 0) {
      b = *s++;
      if (!((b & 0xc0) == 0x80)) {v[n] = 0; return n;};
      v[n++] = ((a & 0x1f) << 6) | (b & 0x3f);
    } else if ((a & 0x10) == 0) {
      b = *s++;
      if (!((b & 0xc0) == 0x80)) {v[n] = 0; return n;};
      c = *s++;
      if (!((c & 0xc0) == 0x80)) {v[n] = 0; return n;};
      v[n++] = ((a & 0x0f) << 12) | ((b & 0x3f) << 6) | (c & 0x3f);
    } else if ((a & 0x08) == 0) {
      b = *s++;
      if (!((b & 0xc0) == 0x80)) {v[n] = 0; return n;};
      c = *s++;
      if (!((c & 0xc0) == 0x80)) {v[n] = 0; return n;};
      d = *s++;
      if (!((d & 0xc0) == 0x80)) {v[n] = 0; return n;};
      v[n++] = ((a & 0x07) << 18) | ((b & 0x3f) << 12) | ((c & 0x3f) << 6) | (d & 0x3f);
    } else {
      if (!(0)) {v[n] = 0; return n;};
    }
  }
}
