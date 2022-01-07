
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int online_tree; } ;
typedef TYPE_1__ user_t ;
struct TYPE_8__ {int x; struct TYPE_8__* left; } ;
typedef TYPE_2__ stree_t ;


 int FRIEND_MULT_INV ;
 TYPE_2__* FreedNodes ;
 int free_stree_node (TYPE_2__*) ;
 scalar_t__ hold_online_time ;
 scalar_t__ now ;
 int stree_prune (int ,scalar_t__) ;
 int update_history (TYPE_1__*,int,int,int) ;

__attribute__((used)) static void adjust_online_tree (user_t *U) {
  stree_t *T;
  FreedNodes = 0;
  U->online_tree = stree_prune (U->online_tree, now - hold_online_time);
  while (FreedNodes) {
    T = FreedNodes;
    FreedNodes = T->left;

    update_history (U, -FRIEND_MULT_INV * T->x, 1, 9);
    free_stree_node (T);
  }
}
