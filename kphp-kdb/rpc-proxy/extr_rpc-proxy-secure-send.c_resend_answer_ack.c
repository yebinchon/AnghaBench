
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_query {int qid; } ;
struct process_id {int port; int ip; } ;
struct connection {int dummy; } ;


 int RPC_REQ_RESULT_ACK ;
 int resent_answer_ack ;
 struct connection* rpc_target_choose_connection (int ,int ) ;
 int rpc_target_lookup_hp (int ,int ) ;
 int tl_store_end_ext (int ) ;
 int tl_store_init (struct connection*,int ) ;

void resend_answer_ack (struct rpc_query *q, struct process_id *pid) {
  resent_answer_ack ++;
  struct connection *d = rpc_target_choose_connection (rpc_target_lookup_hp (pid->ip, pid->port), 0);
  if (!d) { return; }
  tl_store_init (d, q->qid);
  tl_store_end_ext (RPC_REQ_RESULT_ACK);
}
