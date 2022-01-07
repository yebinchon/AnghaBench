
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int memcpy (char*,...) ;
 int memset (char*,int ,int) ;

int tl_write_string (const char *s, int len, char *buf, int size) {
  assert (len >= 0);
  assert (len < (1 << 24));
  if (size < len + 4) { return -1; }
  if (len < 254) {
    *(buf ++) = len;
    memcpy (buf, s, len);
    int pad = (-(len + 1)) & 3;
    memset (buf + len, 0, pad);
    return 1 + len + pad;
  } else {
    *(buf ++) = 254;
    memcpy (buf, &len, 3);
    buf += 3;

    memcpy (buf, s, len);
    int pad = (-(len)) & 3;
    memset (buf + len, 0, pad);
    return 4 + len + pad;
  }
  return 0;
}
