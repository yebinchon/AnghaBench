
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_target_set {int state; int T_count; scalar_t__ T; struct udp_target* last; struct udp_target* S; } ;
struct udp_target {int dummy; } ;


 int assert (int) ;
 int lrand48 () ;
 scalar_t__ tree_insert_udp_target_by_fpid (scalar_t__,struct udp_target*,int ) ;

void udp_target_set_to_tree (struct udp_target_set *ST) {
  assert (ST->state == 2);
  struct udp_target *S = ST->S;
  ST->last = S;
  ST->T = 0;
  ST->T = tree_insert_udp_target_by_fpid (ST->T, S, lrand48 ());
  ST->T_count = 1;
  ST->state = 3;
}
