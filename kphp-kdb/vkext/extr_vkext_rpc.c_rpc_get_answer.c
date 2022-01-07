
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_query {int status; int qid; } ;


 int END_TIMER (int (*) (struct rpc_query*,double)) ;
 int START_TIMER (int (*) (struct rpc_query*,double)) ;
 double precise_now ;
 int query_completed ;





 int rpc_poll (double) ;
 int rpc_query_delete (struct rpc_query*) ;
 int timedout_queries ;
 int tree_delete_qid (int ,int ) ;
 int update_precise_now () ;

__attribute__((used)) static int rpc_get_answer (struct rpc_query *q, double timeout) {
  if (!q) {

    return -1;
  }
  START_TIMER (rpc_get_answer);
  update_precise_now ();
  while (timeout > precise_now && (q->status == 128 || q->status == 129 || q->status == 130)) {
    rpc_poll (timeout);
    update_precise_now ();
  }
  switch (q->status) {
  case 128:
  case 129:
  case 130:
    rpc_query_delete (q);
    timedout_queries ++;
    END_TIMER (rpc_get_answer);
    return -1;
  case 131:
    query_completed = tree_delete_qid (query_completed, q->qid);
    END_TIMER (rpc_get_answer);
    return 1;
  case 132:
    query_completed = tree_delete_qid (query_completed, q->qid);
    rpc_query_delete (q);
    END_TIMER (rpc_get_answer);
    return -1;
  }
  END_TIMER (rpc_get_answer);
  return 0;
}
