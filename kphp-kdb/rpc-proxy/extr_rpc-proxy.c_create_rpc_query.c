
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_query_type {int dummy; } ;
struct TYPE_3__ {double wakeup_time; int wakeup; scalar_t__ h_idx; } ;
struct process_id {int dummy; } ;
struct rpc_query {long long qid; long long old_qid; int in_type; double start_time; TYPE_1__ ev; struct rpc_query_type type; struct process_id pid; } ;
typedef enum tl_type { ____Placeholder_tl_type } tl_type ;
struct TYPE_4__ {double timeout; } ;


 TYPE_2__* CC ;
 int active_queries ;
 int assert (int) ;
 int hash_insert_rpc_query (int *,struct rpc_query*) ;
 int hash_lookup_rpc_query (int *,struct rpc_query*) ;
 int insert_event_timer (TYPE_1__*) ;
 double precise_now ;
 int rpc_query_hash_table ;
 int rpc_query_timeout_gateway ;
 struct rpc_query* zmalloc (int) ;

struct rpc_query *create_rpc_query (long long qid, struct process_id pid, long long old_qid, enum tl_type in_type , struct rpc_query_type rpc_query_type, double timeout) {
  struct rpc_query *q = zmalloc (sizeof (*q));
  q->qid = qid;
  q->pid = pid;
  q->old_qid = old_qid;

  q->in_type = in_type;
  q->start_time = precise_now;
  assert (!hash_lookup_rpc_query (&rpc_query_hash_table, q));
  hash_insert_rpc_query (&rpc_query_hash_table, q);
  q->ev.h_idx = 0;
  q->ev.wakeup = rpc_query_timeout_gateway;
  q->ev.wakeup_time = precise_now + (timeout ? timeout : CC->timeout);
  q->type = rpc_query_type;
  insert_event_timer (&q->ev);
  active_queries ++;
  return q;
}
