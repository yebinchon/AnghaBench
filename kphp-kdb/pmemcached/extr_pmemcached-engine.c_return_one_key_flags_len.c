
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; } ;


 int assert (int) ;
 int memcpy (char*,char const*,int) ;
 int sprintf (char*,char*,...) ;
 int write_out (int *,char*,int) ;

int return_one_key_flags_len (struct connection *c, const char *key, int key_len, char *val, int vlen, int flags) {
  static char buff[65536];
  int l = sprintf (buff, "VALUE ");
  memcpy (buff + l, key, key_len);
  l += key_len;
  l += sprintf (buff + l, " %d %d\r\n", flags, vlen);
  assert (l <= 65536);
  write_out (&c->Out, buff, l);
  write_out (&c->Out, val, vlen);
  write_out (&c->Out, "\r\n", 2);
  return l;
}
