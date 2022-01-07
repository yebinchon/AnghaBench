
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_target {int dummy; } ;
struct rpc_cluster_bucket {int S; } ;


 struct udp_target* udp_target_set_choose_target (int ) ;

void *__udp_get_conn (struct rpc_cluster_bucket *B) {
  struct udp_target *S = udp_target_set_choose_target (B->S);
  if (!S) { return 0; }
  return (void *)1l;
}
