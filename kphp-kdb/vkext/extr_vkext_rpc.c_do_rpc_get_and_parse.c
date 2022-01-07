
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_query {double timeout; int answer_len; int answer; scalar_t__ start_time; } ;


 int ADD_CNT (int ) ;
 int END_TIMER (int ) ;
 int START_TIMER (int ) ;
 int assert (struct rpc_query*) ;
 scalar_t__ buffer_create_data (int ,int ) ;
 scalar_t__ buffer_delete (scalar_t__) ;
 scalar_t__ inbuf ;
 int rpc_get_and_parse ;
 int rpc_get_answer (struct rpc_query*,double) ;
 int rpc_query_delete_nobuf (struct rpc_query*) ;
 struct rpc_query* rpc_query_get (long long) ;

int do_rpc_get_and_parse (long long qid, double timeout) {
  ADD_CNT (rpc_get_and_parse);
  START_TIMER (rpc_get_and_parse);
  struct rpc_query *q = rpc_query_get (qid);
  if (!q) {
    END_TIMER (rpc_get_and_parse);
    return -1;
  }
  if (timeout >= 0) {
    timeout += q->start_time;
  } else {
    timeout = q->timeout;
  }
  int r = rpc_get_answer (q, timeout);

  if (r < 0) {
    END_TIMER (rpc_get_and_parse);
    return -1;
  } else {
    if (inbuf) {
      inbuf = buffer_delete (inbuf);
    }

    assert (q);
    inbuf = buffer_create_data (q->answer, q->answer_len);
    rpc_query_delete_nobuf (q);
    END_TIMER (rpc_get_and_parse);
    return 1;
  }
}
