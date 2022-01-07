
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; } ;


 int assert (int) ;
 int sprintf (char*,char*,char*,int) ;
 int write_out (int *,char*,int) ;

int return_key_value (struct connection *c, char *key, char *val, int vlen) {
  static char buff[2048];
  int l = sprintf (buff, "VALUE %s 0 %d\r\n", key, vlen);
  assert (l <= 2048);
  write_out (&c->Out, buff, l);
  write_out (&c->Out, val, vlen);
  write_out (&c->Out, "\r\nEND\r\n", 7);
  return 0;
}
