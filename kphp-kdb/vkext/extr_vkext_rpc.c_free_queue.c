
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_queue {int completed; } ;


 int tree_clear_qid (int ) ;
 int zzfree (struct rpc_queue*,int) ;

void free_queue (struct rpc_queue *Q) {
  tree_clear_qid (Q->completed);
  zzfree (Q, sizeof (*Q));
}
