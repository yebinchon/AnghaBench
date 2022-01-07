
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_join {int protocol_version; int binlog_position; int id; int port; scalar_t__ host; } ;
struct connection {scalar_t__ remote_ip; } ;


 long long add_node (scalar_t__,int ,int ,int ,struct connection*,int ) ;
 int fprintf (int ,char*,int) ;
 int rpc_send_delays (struct connection*,long long) ;
 scalar_t__ rpc_send_join_ack (struct connection*,long long) ;
 int stderr ;
 int verbosity ;

int rpc_execute_join (struct connection *c, struct rpc_join *P, int len) {
  if (verbosity >= 2) {
    fprintf (stderr, "rpc_execute_join: len = %d\n", len);
  }
  if (len != sizeof (struct rpc_join)) {
    return 0;
  }
  long long x = add_node (P->host ? P->host : c->remote_ip, P->port, P->id, P->binlog_position, c, P->protocol_version);
  if (rpc_send_join_ack (c, x) < 0) {
    return -1;
  }
  return rpc_send_delays (c, x);
}
