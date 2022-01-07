
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_cluster_bucket {long long A; } ;



long long __conn_get_actor (struct rpc_cluster_bucket *B) {
  return B->A;
}
