
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CSN ;
 int NB_max ;
 int NB_size ;
 int NB_used ;
 int STATS_BUFF_SIZE ;
 int active_connections ;
 int active_gathers ;
 int active_outbound_connections ;
 int ev_heap_size ;
 int maxconn ;
 double netw_queries ;
 int now ;
 int outbound_connections ;
 int safe_div (double,int) ;
 int snprintf (int ,int ,char*,int,int,int,int,int,int,int,int,int,int,int,int,int,double,int ) ;
 int start_time ;
 int stats_buff ;
 int stats_buff_len ;

int prepare_stats (void) {
  int uptime = now - start_time;

  return stats_buff_len = snprintf (stats_buff, STATS_BUFF_SIZE,
      "start_time\t%d\n"
      "current_time\t%d\n"
      "uptime\t%d\n"
      "network_connections\t%d\n"
      "max_network_connections\t%d\n"
      "outbound_connections_config\t%d\n"
      "outbound_connections\t%d\n"
      "outbound_connections_active\t%d\n"
      "active_gathers\t%d\n"
      "active_network_events\t%d\n"
      "used_network_buffers\t%d\n"
      "max_network_buffers\t%d\n"
      "network_buffer_size\t%d\n"
      "queries_total\t%lld\n"
      "qps\t%.3f\n"
      "END\n",
      start_time,
      now,
      uptime,
      active_connections,
      maxconn,
      CSN,
      outbound_connections,
      active_outbound_connections,
      active_gathers,
      ev_heap_size,
      NB_used,
      NB_max,
      NB_size,
      netw_queries,
      safe_div(netw_queries, uptime)
      );
}
