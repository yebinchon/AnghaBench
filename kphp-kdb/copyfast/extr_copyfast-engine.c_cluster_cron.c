
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 scalar_t__ CHILDREN_RENEW_TIME ;
 int ID_MASK ;
 scalar_t__ JOIN_RENEW_TIME ;
 scalar_t__ LAST_CHILDREN_GET_TIME ;
 scalar_t__ LAST_STATS_TIME ;
 int NODE_ID ;
 scalar_t__ STATS_RENEW_TIME ;
 int binlog_flush (int ) ;
 struct connection* get_target_connection (int ) ;
 int main_targ ;
 scalar_t__ precise_now ;
 int rpc_send_join (struct connection*) ;
 int rpc_send_stats (struct connection*) ;
 int send_friends_binlog_position () ;

void cluster_cron (void) {
  if (((NODE_ID & ID_MASK) && LAST_CHILDREN_GET_TIME + CHILDREN_RENEW_TIME < precise_now) ||
    (!(NODE_ID & ID_MASK) && LAST_CHILDREN_GET_TIME + JOIN_RENEW_TIME < precise_now)) {
    struct connection *c = get_target_connection (main_targ);
    if (c) {
      LAST_CHILDREN_GET_TIME = precise_now;
      rpc_send_join (c);
    }
  }
  if ((NODE_ID & ID_MASK) && LAST_STATS_TIME + STATS_RENEW_TIME < precise_now) {
    struct connection *c = get_target_connection (main_targ);
    if (c) {
      LAST_STATS_TIME = precise_now;
      rpc_send_stats (c);
    }
  }
  send_friends_binlog_position ();
  binlog_flush (0);
}
