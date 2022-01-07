
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connection {int dummy; } ;
struct TYPE_2__ {int remote_pid; } ;


 TYPE_1__* RPCS_DATA (struct connection*) ;
 int RPC_INVOKE_REQ ;
 int SKIP_ALL_BYTES ;
 int * TL_IN_PID ;
 int WaitAioArrClear () ;
 int rpc_target_insert_conn (struct connection*) ;
 int tl_query_act (struct connection*,int,int) ;

int default_tl_rpcs_execute (struct connection *c, int op, int len) {
  rpc_target_insert_conn (c);
  if (op != RPC_INVOKE_REQ) {
    return SKIP_ALL_BYTES;
  }
  TL_IN_PID = &RPCS_DATA(c)->remote_pid;
  WaitAioArrClear ();
  return tl_query_act (c, op, len);
}
