
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_queue {int dummy; } ;


 int lrand48 () ;
 int queue_tree ;
 int tree_insert_queue (int ,struct rpc_queue*,int ) ;

__attribute__((used)) static void rpc_queue_add (struct rpc_queue *Q) {
  queue_tree = tree_insert_queue (queue_tree, Q, lrand48 ());
}
