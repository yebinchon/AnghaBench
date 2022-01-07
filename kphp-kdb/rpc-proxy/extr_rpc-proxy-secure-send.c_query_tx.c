
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct process_id {int dummy; } ;
struct secure_send_extra {int data_size; double timeout; int binlog; int binlog_pos; struct process_id pid; int data; scalar_t__ state; } ;
struct rpc_query_type {scalar_t__ on_free; scalar_t__ on_alarm; scalar_t__ on_answer; } ;
struct rpc_query {struct secure_send_extra* extra; } ;
struct TYPE_4__ {scalar_t__* fun_pos; scalar_t__ funs; } ;
struct TYPE_5__ {TYPE_1__ methods; } ;


 TYPE_2__* CC ;
 size_t RPC_FUN_QUERY_ON_ALARM ;
 size_t RPC_FUN_QUERY_ON_ANSWER ;
 size_t RPC_FUN_QUERY_ON_FREE ;
 int assert (struct rpc_query*) ;
 struct rpc_query* create_rpc_query (long long,struct process_id,long long,int ,struct rpc_query_type,double) ;
 TYPE_2__* get_cluster_by_id (long long) ;
 int insert_binlog_pos (int ,int) ;
 int log_cur_pos () ;
 int malloc (int) ;
 int memcpy (int ,int const*,int) ;
 int secure_send_s0 ;
 int tl_type_none ;
 struct secure_send_extra* zmalloc (int) ;

void query_tx (long long new_qid, long long qid, struct process_id *pid, long long cluster_id, double timeout, int size, const int *data) {
  struct rpc_query_type qt;
  CC = get_cluster_by_id (cluster_id);
  qt.on_answer = CC->methods.funs + CC->methods.fun_pos[RPC_FUN_QUERY_ON_ANSWER];
  qt.on_alarm = CC->methods.funs + CC->methods.fun_pos[RPC_FUN_QUERY_ON_ALARM];
  qt.on_free = CC->methods.funs + CC->methods.fun_pos[RPC_FUN_QUERY_ON_FREE];
  struct rpc_query *q = create_rpc_query (new_qid, *pid, qid, tl_type_none, qt, timeout);
  assert (q);
  struct secure_send_extra *E = zmalloc (sizeof (*E));
  E->state = 0;
  E->data_size = size;
  E->data = malloc (E->data_size);
  memcpy (E->data, data, E->data_size);
  E->pid = *pid;
  E->timeout = timeout;
  E->binlog = 1;
  q->extra = E;
  secure_send_s0 ++;
  insert_binlog_pos (log_cur_pos (), 1);
  E->binlog_pos = log_cur_pos ();
}
