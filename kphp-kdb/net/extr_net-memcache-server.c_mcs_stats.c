
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; } ;


 int prepare_stats (struct connection*,char*,int) ;
 int write_out (int *,char*,int) ;

int mcs_stats (struct connection *c) {
  static char stats_buffer[65536];
  int stats_len = prepare_stats (c, stats_buffer, 65530);
  write_out (&c->Out, stats_buffer, stats_len);
  write_out (&c->Out, "END\r\n", 5);
  return 0;
}
