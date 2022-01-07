
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_cluster_bucket {int dummy; } ;


 int assert (void*) ;
 int tcp_buffers ;
 int tl_store_init (void*,long long) ;
 int tl_store_init_tcp_raw_msg (void*,long long) ;

void __conn_init_store (struct rpc_cluster_bucket *B, void *c, long long qid) {
  assert (c);
  if (!tcp_buffers) {
    tl_store_init (c, qid);
  } else {
    tl_store_init_tcp_raw_msg (c, qid);
  }
}
