
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* buf ;
 int buf_pos ;
 int memcpy (scalar_t__*,char*,int) ;
 int strlen (char*) ;

void tl_buf_add_string_nospace (char *s, int len) {
  if (len < 0) { len = strlen (s); }

  memcpy (buf + buf_pos, s, len); buf_pos += len;
  buf[buf_pos] = 0;
}
