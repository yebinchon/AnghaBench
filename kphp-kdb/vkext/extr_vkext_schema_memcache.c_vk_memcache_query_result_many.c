
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
struct tl_tree {int dummy; } ;
struct rpc_queue {int dummy; } ;
struct rpc_query {struct tl_tree* extra; } ;


 int INC_REF (struct tl_tree*) ;
 int add_index_bool (int *,long long,int ) ;
 int add_index_zval (int *,long long,int *) ;
 int array_init (int *) ;
 scalar_t__ do_rpc_get_and_parse (long long,double) ;
 int do_rpc_queue_empty (struct rpc_queue*) ;
 long long do_rpc_queue_next (struct rpc_queue*,double) ;
 struct rpc_query* rpc_query_get (long long) ;
 int ** vk_memcache_query_result_one (struct tl_tree*) ;

void vk_memcache_query_result_many (struct rpc_queue *Q, double timeout, zval **r) {
  array_init (*r);
  int size = 0;
  while (!do_rpc_queue_empty (Q)) {
    long long qid = do_rpc_queue_next (Q, timeout);
    if (qid <= 0) {
      return;
    }
    struct rpc_query *q = rpc_query_get (qid);
    struct tl_tree *T = q->extra;
    INC_REF (T);

    if (do_rpc_get_and_parse (qid, timeout) < 0) {
      continue;
    }
    size ++;
    zval **x = vk_memcache_query_result_one (T);
    if (x) {
      add_index_zval (*r, qid, *x);
    } else {
      add_index_bool (*r, qid, 0);
    }
  }
}
