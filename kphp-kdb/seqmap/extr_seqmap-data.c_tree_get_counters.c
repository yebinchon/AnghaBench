
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {scalar_t__ plus_unsure; struct item* left; scalar_t__ minus_unsure; scalar_t__ delta; struct item* right; } ;


 int item_cmp (struct item*,struct item*) ;
 int tree_count_one (struct item*,int*) ;

__attribute__((used)) static void tree_get_counters (struct item *T, struct item *L, int Z[3]) {
  if (!T) { return; }
  int c = item_cmp (T, L);
  if (c > 0) {
    tree_get_counters (T->left, L, Z);
  } else {
    if (c) {
      tree_get_counters (T->right, L, Z);
      tree_count_one (T, Z);
    }
    if (T->left) {
      Z[0] += T->left->delta;
      Z[1] += T->left->minus_unsure;
      Z[2] += T->left->plus_unsure;
    }
  }
}
