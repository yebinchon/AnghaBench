
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHECK (int) ;

void string_to_utf8 (const unsigned char *s, int *v) {
  int *tv = v;


  int a, b, c, d;

  while (*s) {
    a = *s++;
    if ((a & 0x80) == 0) {
      *v++ = a;
    } else if ((a & 0x40) == 0) {
      if (!(0)) {v = tv; break;};
    } else if ((a & 0x20) == 0) {
      b = *s++;
      if (!((b & 0xc0) == 0x80)) {v = tv; break;};
      if (!((a & 0x1e) > 0)) {v = tv; break;};
      *v++ = ((a & 0x1f) << 6) | (b & 0x3f);
    } else if ((a & 0x10) == 0) {
      b = *s++;
      if (!((b & 0xc0) == 0x80)) {v = tv; break;};
      c = *s++;
      if (!((c & 0xc0) == 0x80)) {v = tv; break;};
      if (!(((a & 0x0f) | (b & 0x20)) > 0)) {v = tv; break;};
      *v++ = ((a & 0x0f) << 12) | ((b & 0x3f) << 6) | (c & 0x3f);
    } else if ((a & 0x08) == 0) {
      b = *s++;
      if (!((b & 0xc0) == 0x80)) {v = tv; break;};
      c = *s++;
      if (!((c & 0xc0) == 0x80)) {v = tv; break;};
      d = *s++;
      if (!((d & 0xc0) == 0x80)) {v = tv; break;};
      if (!(((a & 0x07) | (b & 0x30)) > 0)) {v = tv; break;};
      *v++ = ((a & 0x07) << 18) | ((b & 0x3f) << 12) | ((c & 0x3f) << 6) | (d & 0x3f);
    } else {
      if (!(0)) {v = tv; break;};
    }
  }
  *v = 0;

}
