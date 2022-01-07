
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_query {size_t qid; double timeout; int start_time; } ;


 int ADD_CNT (int ) ;
 int END_TIMER (int ) ;
 int RPC_MAX_QUERIES ;
 size_t RPC_QUERIES_MASK ;
 int START_TIMER (int ) ;
 size_t first_qid ;
 size_t last_qid ;
 int max_query_id ;
 int memset (struct rpc_query*,int ,int) ;
 int precise_now ;
 struct rpc_query* queries ;
 int total_queries ;
 int total_working_qid ;
 int tree_insert ;
 int update_precise_now () ;

__attribute__((used)) static struct rpc_query *rpc_query_alloc (double timeout) {
  ADD_CNT (tree_insert);
  START_TIMER (tree_insert);
  if (total_working_qid > RPC_MAX_QUERIES / 2) {
    END_TIMER (tree_insert);
    return 0;
  }
  last_qid ++;
  while (queries[(last_qid - first_qid) & RPC_QUERIES_MASK].qid >= first_qid) { last_qid ++; }
  int fd = (last_qid - first_qid) & RPC_QUERIES_MASK;
  if (fd >= max_query_id) {
    max_query_id = fd + 1;
  }

  long long qid = last_qid;
  update_precise_now ();
  struct rpc_query *q = &queries[(qid - first_qid) & RPC_QUERIES_MASK];
  memset (q, 0, sizeof (*q));
  q->qid = qid;
  q->start_time = precise_now;
  q->timeout = timeout;




  total_working_qid ++;
  total_queries ++;
  END_TIMER (tree_insert);
  return q;
}
