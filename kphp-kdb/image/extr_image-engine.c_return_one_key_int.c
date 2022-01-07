
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; } ;


 int sprintf (char*,char*,...) ;
 int write_out (int *,char*,int) ;

int return_one_key_int (struct connection *c, const char *key, int i) {
  static char buff[256], s[32];
  int vlen = sprintf (s, "i:%d;", i);
  int l = sprintf (buff, "VALUE %s 1 %d\r\n", key, vlen);
  write_out (&c->Out, buff, l);
  write_out (&c->Out, s, vlen);
  write_out (&c->Out, "\r\n", 2);
  return 0;
}
