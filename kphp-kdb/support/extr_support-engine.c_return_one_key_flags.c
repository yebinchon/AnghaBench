
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; } ;


 int STATS_BUFF_SIZE ;
 int assert (int) ;
 int snprintf (char*,int,char*,char const*,int,int) ;
 char* stats_buff ;
 int write_out (int *,char*,int) ;

int return_one_key_flags (struct connection *c, const char *key, char *val, int vlen, int flags) {
  int l = snprintf (stats_buff, STATS_BUFF_SIZE, "VALUE %s %d %d\r\n", key, flags, vlen);
  assert (l <= STATS_BUFF_SIZE);
  write_out (&c->Out, stats_buff, l);
  write_out (&c->Out, val, vlen);
  write_out (&c->Out, "\r\n", 2);
  return 0;
}
