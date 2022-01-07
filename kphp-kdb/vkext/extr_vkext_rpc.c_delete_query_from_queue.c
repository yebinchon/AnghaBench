
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_queue {int remaining; int completed; } ;
struct rpc_query {scalar_t__ status; scalar_t__ queue_id; int qid; } ;


 scalar_t__ query_status_error ;
 scalar_t__ query_status_ok ;
 struct rpc_queue* rpc_queue_get (scalar_t__) ;
 int tree_delete_qid (int ,int ) ;

__attribute__((used)) static void delete_query_from_queue (struct rpc_query *q) {
  if (q->queue_id && (q->status == query_status_ok || q->status == query_status_error)) {
    struct rpc_queue *Q = rpc_queue_get (q->queue_id);
    if (Q) {
      Q->completed = tree_delete_qid (Q->completed, q->qid);
      Q->remaining --;
    }
    q->queue_id = 0;
  }
}
