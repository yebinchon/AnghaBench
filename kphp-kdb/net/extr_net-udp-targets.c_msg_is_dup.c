
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_target {int received_prefix; int received_tree; } ;


 scalar_t__ tree_lookup_int (int ,int) ;

int msg_is_dup (struct udp_target *S, int x) {
  return (x <= S->received_prefix || tree_lookup_int (S->received_tree, x));
}
