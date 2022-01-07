
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_query {int qid; } ;
struct rpc_connection {int servers; } ;


 int ADD_CNT (int ) ;
 int END_TIMER (int ) ;
 int START_TIMER (int ) ;
 struct rpc_query* rpc_query_alloc (double) ;
 int rpc_query_delete (struct rpc_query*) ;
 int rpc_send ;
 scalar_t__ rpc_write (struct rpc_connection*,int ,double) ;

struct rpc_query *do_rpc_send_noflush (struct rpc_connection *c, double timeout) {
  ADD_CNT (rpc_send);
  START_TIMER (rpc_send);
  if (!c || !c->servers) {
    END_TIMER (rpc_send);
    return 0;
  }


  struct rpc_query *q = rpc_query_alloc (timeout);
  if (!q) {
    END_TIMER (rpc_send);
    return 0;
  }
  if (rpc_write (c, q->qid, timeout) < 0) {

    rpc_query_delete (q);
    END_TIMER (rpc_send);
    return 0;
  }

  END_TIMER (rpc_send);
  return q;
}
