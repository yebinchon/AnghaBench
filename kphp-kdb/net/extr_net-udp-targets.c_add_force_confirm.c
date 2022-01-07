
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int h_idx; } ;
struct udp_target {int unack_size; int confirm_tree; TYPE_1__ confirm_timer; } ;


 int START_WINDOW_SIZE ;
 int lrand48 () ;
 int start_confirm_timer (struct udp_target*) ;
 int tree_insert_int (int ,int,int ) ;
 int tree_lookup_int (int ,int) ;
 int udp_confirms_send (struct udp_target*) ;

void add_force_confirm (struct udp_target *S, int x) {
  if (!S->confirm_timer.h_idx) {
    start_confirm_timer (S);
  }
  if (!tree_lookup_int (S->confirm_tree, x)) {
    S->confirm_tree = tree_insert_int (S->confirm_tree, x, lrand48 ());
    S->unack_size ++;
    if (S->unack_size >= START_WINDOW_SIZE / 2000) {
      udp_confirms_send (S);
    }
  }
}
