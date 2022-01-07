
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_query {double timeout; char* answer; int answer_len; scalar_t__ start_time; } ;


 int ADD_CNT (int ) ;
 int END_TIMER (int ) ;
 int START_TIMER (int ) ;
 int assert (struct rpc_query*) ;
 int rpc_get ;
 int rpc_get_and_parse ;
 int rpc_get_answer (struct rpc_query*,double) ;
 int rpc_query_delete_nobuf (struct rpc_query*) ;
 struct rpc_query* rpc_query_get (long long) ;

int do_rpc_get (long long qid, double timeout, char **value) {
  ADD_CNT (rpc_get);
  START_TIMER (rpc_get);
  struct rpc_query *q = rpc_query_get (qid);
  if (!q) {
    END_TIMER (rpc_get);
    return -1;
  }
  if (timeout >= 0) {
    timeout += q->start_time;
  } else {
    timeout = q->timeout;
  }
  int r = rpc_get_answer (q, timeout);
  if (r < 0) {
    END_TIMER (rpc_get);
    return -1;
  } else {

    assert (q);
    *value = q->answer;
    int r = q->answer_len;
    rpc_query_delete_nobuf (q);
    END_TIMER (rpc_get_and_parse);
    return r;
  }
}
