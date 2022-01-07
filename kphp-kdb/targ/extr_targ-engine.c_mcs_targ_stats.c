
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; } ;


 int stats_buff ;
 int targ_prepare_stats (struct connection*) ;
 int write_out (int *,int ,int ) ;

int mcs_targ_stats (struct connection *c) {
  write_out (&c->Out, stats_buff, targ_prepare_stats (c));
  return 0;
}
