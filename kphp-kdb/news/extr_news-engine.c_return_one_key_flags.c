
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; } ;


 int assert (int) ;
 int sprintf (char*,char*,char const*,int) ;
 int write_out (int *,char*,int) ;

int return_one_key_flags (struct connection *c, const char *key, char *val, int vlen) {
  static char buff[65536];
  int l = sprintf (buff, "VALUE %s 1 %d\r\n", key, vlen);
  assert (l <= 65536);
  write_out (&c->Out, buff, l);
  write_out (&c->Out, val, vlen);
  write_out (&c->Out, "\r\n", 2);
  return 0;
}
