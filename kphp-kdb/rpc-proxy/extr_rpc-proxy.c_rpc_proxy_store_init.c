
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_cluster_bucket {TYPE_1__* methods; } ;
struct TYPE_2__ {int (* init_store ) (struct rpc_cluster_bucket*,void*,long long) ;void* (* get_conn ) (struct rpc_cluster_bucket*) ;} ;


 void* stub1 (struct rpc_cluster_bucket*) ;
 int stub2 (struct rpc_cluster_bucket*,void*,long long) ;

int rpc_proxy_store_init (struct rpc_cluster_bucket *B, long long new_qid) {
  void *conn = B->methods->get_conn (B);
  if (!conn) {
    return 0;
  } else {
    B->methods->init_store (B, conn, new_qid);
    return 1;
  }
}
