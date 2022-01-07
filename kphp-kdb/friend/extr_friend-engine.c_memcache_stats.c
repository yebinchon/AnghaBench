
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; } ;


 int friend_prepare_stats (struct connection*) ;
 char* stats_buff ;
 int write_out (int *,char*,int) ;

int memcache_stats (struct connection *c) {
  int len = friend_prepare_stats (c);
  write_out (&c->Out, stats_buff, len);
  write_out (&c->Out, "END\r\n", 5);
  return 0;
}
