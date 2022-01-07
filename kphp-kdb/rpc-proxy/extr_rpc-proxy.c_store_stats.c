
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ STATS_BUFF_SIZE ;
 int rpc_proxy_prepare_stats (int ,int ,scalar_t__) ;
 int stats_buffer ;
 int tl_store_stats (int ,int ) ;

void store_stats (void) {
  rpc_proxy_prepare_stats (0, stats_buffer, STATS_BUFF_SIZE - 2);
  tl_store_stats (stats_buffer, 0);
}
