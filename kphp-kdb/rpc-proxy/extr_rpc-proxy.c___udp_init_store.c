
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_target {int dummy; } ;
struct rpc_cluster_bucket {int S; } ;


 int tl_store_init_raw_msg (struct udp_target*,long long) ;
 struct udp_target* udp_target_set_choose_target (int ) ;

void __udp_init_store (struct rpc_cluster_bucket *B, void *c, long long qid) {
  struct udp_target *S = udp_target_set_choose_target (B->S);
  tl_store_init_raw_msg (S, qid);
}
