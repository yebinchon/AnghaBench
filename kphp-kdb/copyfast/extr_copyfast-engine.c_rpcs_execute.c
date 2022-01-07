
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcs_op {int remote_id; } ;
struct rpc_handshake_reject {int dummy; } ;
struct rpc_handshake_accept {int dummy; } ;
struct rpc_handshake {int dummy; } ;
struct rpc_binlog_request {int dummy; } ;
struct rpc_binlog_info {int dummy; } ;
struct rpc_binlog_data {int dummy; } ;
struct connection {int fd; int In; } ;


 int CLUSTER_MASK ;
 int MAX_PACKET_LEN ;
 int NODE_ID ;
 scalar_t__ P ;






 int SKIP_ALL_BYTES ;
 int assert (int) ;
 scalar_t__ choose_cluster (int) ;
 int fprintf (int ,char*,int,int,int) ;
 int read_in (int *,scalar_t__*,int) ;
 int rpc_check_crc32 (scalar_t__) ;
 int rpc_execute_binlog_data (struct connection*,struct rpc_binlog_data*,int) ;
 int rpc_execute_binlog_info (struct connection*,struct rpc_binlog_info*,int) ;
 int rpc_execute_binlog_request (struct connection*,struct rpc_binlog_request*,int) ;
 int rpc_execute_handshake (struct connection*,struct rpc_handshake*,int) ;
 int rpc_execute_handshake_accept (struct connection*,struct rpc_handshake_accept*,int) ;
 int rpc_execute_handshake_reject (struct connection*,struct rpc_handshake_reject*,int) ;
 int stderr ;
 int verbosity ;

int rpcs_execute (struct connection *c, int op, int len) {
  if (verbosity > 1) {
    fprintf (stderr, "rpcs_execute: fd=%d, op=%x, len=%d\n", c->fd, op, len);
  }
  if (len > MAX_PACKET_LEN) {
    return SKIP_ALL_BYTES;
  }

  assert (read_in (&c->In, &P, len) == len);
  assert (rpc_check_crc32 (P));

  if (choose_cluster (((struct rpcs_op *)P)->remote_id) < 0 || (((struct rpcs_op *)P)->remote_id & CLUSTER_MASK) != (NODE_ID & CLUSTER_MASK)) {
    return 0;
  }

  switch (op) {
  case 130:
    return rpc_execute_handshake (c, (struct rpc_handshake *)P, len);
  case 129:
    return rpc_execute_handshake_accept (c, (struct rpc_handshake_accept *)P, len);
  case 128:
    return rpc_execute_handshake_reject (c, (struct rpc_handshake_reject *)P, len);
  case 132:
    return rpc_execute_binlog_info (c, (struct rpc_binlog_info *)P, len);
  case 131:
    return rpc_execute_binlog_request (c, (struct rpc_binlog_request *)P, len);
  case 133:
    return rpc_execute_binlog_data (c, (struct rpc_binlog_data *)P, len);


  }

  return 0;
}
