
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcc_op {int id; } ;
struct rpc_request_update_stats {int dummy; } ;
struct rpc_kicked {int dummy; } ;
struct rpc_join_ack {int dummy; } ;
struct rpc_delays {int dummy; } ;
struct rpc_children_answer {int dummy; } ;
struct connection {int fd; int In; } ;


 int MAX_PACKET_LEN ;
 scalar_t__ P ;





 int SKIP_ALL_BYTES ;
 int assert (int) ;
 scalar_t__ choose_cluster (int ) ;
 scalar_t__ choose_cluster_f (int ) ;
 int fprintf (int ,char*,int,int,int) ;
 int read_in (int *,scalar_t__*,int) ;
 int rpc_check_crc32 (scalar_t__) ;
 int rpc_execute_children_answer (struct connection*,struct rpc_children_answer*,int) ;
 int rpc_execute_delays (struct connection*,struct rpc_delays*,int) ;
 int rpc_execute_join_ack (struct connection*,struct rpc_join_ack*,int) ;
 int rpc_execute_kicked (struct connection*,struct rpc_kicked*,int) ;
 int rpc_execute_request_update_stats (struct connection*,struct rpc_request_update_stats*,int) ;
 int stderr ;
 int verbosity ;
 int vkprintf (int,char*,int) ;

int rpcc_execute (struct connection *c, int op, int len) {
  if (verbosity > 1) {
    fprintf (stderr, "rpcc_execute: fd=%d, op=%x, len=%d\n", c->fd, op, len);
  }
  if (len > MAX_PACKET_LEN) {
    return SKIP_ALL_BYTES;
  }

  assert (read_in (&c->In, &P, len) == len);
  assert (rpc_check_crc32 (P));


  if ((op != 130 || choose_cluster_f (((struct rpcc_op *)P)->id) < 0) && choose_cluster (((struct rpcc_op *)P)->id) < 0) {
    return 0;
  }

  vkprintf (6, "%x\n", op);

  switch (op) {
  case 130:
    return rpc_execute_join_ack (c, (struct rpc_join_ack *)P, len);
  case 132:
    return rpc_execute_children_answer (c, (struct rpc_children_answer *)P, len);
  case 129:
    return rpc_execute_kicked (c, (struct rpc_kicked *)P, len);
  case 128:
    return rpc_execute_request_update_stats (c, (struct rpc_request_update_stats *)P, len);
  case 131:
    return rpc_execute_delays (c, (struct rpc_delays *)P, len);
  }
  return 0;
}
