
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_binlog_info {int binlog_position; int local_id; } ;
struct connection {int last_response_time; } ;
struct TYPE_3__ {int binlog_info_received; } ;
struct TYPE_4__ {TYPE_1__ structured; } ;


 TYPE_2__* STATS ;
 int fprintf (int ,char*,int ,int) ;
 int get_relative_by_id (int ) ;
 int precise_now ;
 int rpc_send_handshake_reject (struct connection*,int ) ;
 int stderr ;
 int update_relatives_binlog_position (int ,int ) ;
 int verbosity ;

int rpc_execute_binlog_info (struct connection *c, struct rpc_binlog_info *P, int len) {
  if (verbosity >= 2) {
    fprintf (stderr, "rpc_execute_binlog_info: remote_id = %lld, len = %d\n", P->local_id, len);
  }
  if (len != sizeof (struct rpc_binlog_info)) {
    return 0;
  }
  STATS->structured.binlog_info_received ++;
  if (!get_relative_by_id (P->local_id)) {
    return rpc_send_handshake_reject (c, P->local_id);
  }
  c->last_response_time = precise_now;
  update_relatives_binlog_position (P->local_id, P->binlog_position);
  return 0;
}
