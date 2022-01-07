
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; } ;


 int MAX_STR_BUF_LEN ;
 int assert (int) ;
 int snprintf (char*,int,char*,char const*,int,int) ;
 char* str_buf ;
 int write_out (int *,char*,int) ;

inline int st_return_one_key_flags (struct connection *c, const char *key, char *val, int vlen, int flags) {
  int l = snprintf (str_buf, MAX_STR_BUF_LEN, "VALUE %s %d %d\r\n", key, flags, vlen);
  assert (l <= MAX_STR_BUF_LEN);
  write_out (&c->Out, str_buf, l);
  write_out (&c->Out, val, vlen);
  write_out (&c->Out, "\r\n", 2);
  return 0;
}
