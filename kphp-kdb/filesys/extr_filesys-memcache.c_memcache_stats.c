
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; } ;


 int cmd_stats ;
 int filesys_prepare_stats (struct connection*) ;
 char* value_buff ;
 int write_out (int *,char*,int) ;

int memcache_stats (struct connection *c) {
  cmd_stats++;
  int stats_len = filesys_prepare_stats (c);
  write_out (&c->Out, value_buff, stats_len);
  write_out (&c->Out, "END\r\n", 5);
  return 0;
}
