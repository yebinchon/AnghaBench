
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct secure_send_extra {int data_size; int data; } ;
struct rpc_query {struct secure_send_extra* extra; int qid; } ;
struct process_id {int port; int ip; } ;
struct connection {int dummy; } ;


 int RPC_INVOKE_REQ ;
 int resent_queries ;
 struct connection* rpc_target_choose_connection (int ,int ) ;
 int rpc_target_lookup_hp (int ,int ) ;
 int tl_store_end_ext (int ) ;
 int tl_store_init (struct connection*,int ) ;
 int tl_store_raw_data (int ,int ) ;

void resend_query (struct rpc_query *q, struct process_id *pid) {
  resent_queries ++;
  struct connection *d = rpc_target_choose_connection (rpc_target_lookup_hp (pid->ip, pid->port), 0);
  if (!d) { return; }
  tl_store_init (d, q->qid);
  struct secure_send_extra *E = q->extra;
  tl_store_raw_data (E->data, E->data_size);
  tl_store_end_ext (RPC_INVOKE_REQ);
}
