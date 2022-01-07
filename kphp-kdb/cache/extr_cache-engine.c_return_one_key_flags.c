
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; } ;
typedef int buff ;


 int assert (int) ;
 int snprintf (char*,int,char*,char const*,int,int) ;
 int write_out (int *,char*,int) ;

int return_one_key_flags (struct connection *c, const char *key, char *val, int vlen, int flags) {
  static char buff[4096];
  int l = snprintf (buff, sizeof (buff), "VALUE %s %d %d\r\n", key, flags, vlen);
  assert (l < sizeof (buff));
  write_out (&c->Out, buff, l);
  write_out (&c->Out, val, vlen);
  write_out (&c->Out, "\r\n", 2);
  return 0;
}
