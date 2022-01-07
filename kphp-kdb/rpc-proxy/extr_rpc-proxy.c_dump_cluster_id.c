
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_cluster {int id; } ;


 int * __cluster_count ;
 int tl_store_long (int ) ;

void dump_cluster_id (struct rpc_cluster *C) {
  tl_store_long (C->id);
  (*__cluster_count) ++;
}
