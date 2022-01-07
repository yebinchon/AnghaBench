
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_update_stats {int dummy; } ;
struct rpc_stats {int dummy; } ;
struct rpc_join_old {int dummy; } ;
struct rpc_join {int dummy; } ;
struct rpc_children_request {int dummy; } ;
struct connection {int fd; int In; } ;


 int MAX_PACKET_LEN ;
 scalar_t__ P ;





 int SKIP_ALL_BYTES ;
 int assert (int) ;
 int fprintf (int ,char*,int,int,int) ;
 int read_in (int *,scalar_t__*,int) ;
 int rpc_check_crc32 (scalar_t__) ;
 int rpc_execute_children_request (struct connection*,struct rpc_children_request*,int) ;
 int rpc_execute_join (struct connection*,struct rpc_join*,int) ;
 int rpc_execute_join_old (struct connection*,struct rpc_join_old*,int) ;
 int rpc_execute_stats (struct connection*,struct rpc_stats*,int) ;
 int rpc_execute_update_stats (struct connection*,struct rpc_update_stats*,int) ;
 int stderr ;
 scalar_t__ verbosity ;

int rpcs_execute (struct connection *c, int op, int len) {
  if (verbosity > 0) {
    fprintf (stderr, "rpcs_execute: fd=%d, op=%x, len=%d\n", c->fd, op, len);
  }
  if (len > MAX_PACKET_LEN) {
    return SKIP_ALL_BYTES;
  }

  assert (read_in (&c->In, &P, len) == len);
  assert (rpc_check_crc32 (P));


  switch (op) {
  case 131:
    return rpc_execute_join (c, (struct rpc_join *)P, len);
    break;

  case 130:
    return rpc_execute_join_old (c, (struct rpc_join_old *)P, len);
    break;

  case 132:
    return rpc_execute_children_request (c, (struct rpc_children_request *)P, len);
    break;

  case 129:
    return rpc_execute_stats (c, (struct rpc_stats *)P, len);
    break;

  case 128:
    return rpc_execute_update_stats (c, (struct rpc_update_stats *)P, len);
    break;
  }
  return 0;
}
