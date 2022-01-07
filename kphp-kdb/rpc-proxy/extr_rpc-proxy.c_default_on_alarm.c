
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_query {scalar_t__ start_time; int old_qid; int pid; int in_type; } ;


 int TL_ERROR_QUERY_TIMEOUT ;
 scalar_t__ precise_now ;
 int rpc_answers_timedout ;
 int timeouted_queries ;
 int tl_fetch_set_error_format (int ,char*,scalar_t__) ;
 scalar_t__ tl_init_store (int ,int *,int ) ;
 int tl_store_end () ;

void default_on_alarm (struct rpc_query *q) {
  timeouted_queries ++;
  rpc_answers_timedout ++;
  if (tl_init_store (q->in_type, &q->pid, q->old_qid) >= 0) {
    tl_fetch_set_error_format (TL_ERROR_QUERY_TIMEOUT, "Query timeout: working_time = %lf", precise_now - q->start_time);
    tl_store_end ();
  }

}
