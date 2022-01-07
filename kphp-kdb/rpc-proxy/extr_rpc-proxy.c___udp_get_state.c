
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_target {scalar_t__ state; } ;
struct rpc_cluster_bucket {int S; } ;


 scalar_t__ udp_ok ;
 scalar_t__ udp_stopped ;
 struct udp_target* udp_target_set_choose_target (int ) ;
 scalar_t__ udp_unknown ;

int __udp_get_state (struct rpc_cluster_bucket *B) {
  struct udp_target *S = udp_target_set_choose_target (B->S);
  if (!S) { return -1; }
  if (S->state == udp_ok) {
    return 1;
  } else if (S->state == udp_stopped || S->state == udp_unknown) {
    return 0;
  } else {
    return -1;
  }
}
