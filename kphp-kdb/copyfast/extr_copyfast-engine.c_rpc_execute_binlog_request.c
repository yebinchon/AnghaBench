
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_binlog_request {scalar_t__ binlog_position; int local_id; } ;
struct connection {int dummy; } ;
struct TYPE_3__ {int binlog_request_received; } ;
struct TYPE_4__ {TYPE_1__ structured; } ;


 scalar_t__ BINLOG_POSITION ;
 TYPE_2__* STATS ;
 int fprintf (int ,char*,int ,int) ;
 int get_relative_by_id (int ) ;
 int rpc_send_binlog_data (struct connection*,int ,scalar_t__) ;
 int rpc_send_handshake_reject (struct connection*,int ) ;
 int stderr ;
 int verbosity ;

int rpc_execute_binlog_request (struct connection *c, struct rpc_binlog_request *P, int len) {
  if (verbosity >= 2) {
    fprintf (stderr, "rpc_execute_binlog_request: remote_id = %lld, len = %d\n", P->local_id, len);
  }
  if (len != sizeof (struct rpc_binlog_request)) {
    return 0;
  }
  STATS->structured.binlog_request_received ++;
  if (!get_relative_by_id (P->local_id)) {
    return rpc_send_handshake_reject (c, P->local_id);
  }
  if (P->binlog_position >= BINLOG_POSITION) {
    return 0;
  }
  rpc_send_binlog_data (c, P->local_id, P->binlog_position);
  return 0;
}
