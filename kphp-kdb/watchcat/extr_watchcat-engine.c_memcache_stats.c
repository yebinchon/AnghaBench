
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; } ;


 scalar_t__ MAX_VALUE_LEN ;
 int prepare_stats (struct connection*,char*,scalar_t__) ;
 char* stats_buff ;
 int watchcat_prepare_stats () ;
 int write_out (int *,char*,int) ;

int memcache_stats (struct connection *c) {
  int len = watchcat_prepare_stats();
  int len2 = prepare_stats (c, stats_buff + len, MAX_VALUE_LEN - len);
  write_out (&c->Out, stats_buff, len + len2);
  write_out (&c->Out, "END\r\n", 5);
  return 0;
}
