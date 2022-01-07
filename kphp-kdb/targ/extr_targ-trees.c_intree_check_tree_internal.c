
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int treespace_t ;
typedef int treeref_t ;
struct intree_node {int x; int right; int left; } ;


 struct intree_node* TS_NODE (int ) ;
 int assert (int) ;

__attribute__((used)) static int intree_check_tree_internal (treespace_t TS, treeref_t T, int a, int b) {
  if (!T) {
    return 0;
  }
  struct intree_node *TC = TS_NODE (T);
  assert (TC->x >= a && TC->x <= b);
  return intree_check_tree_internal (TS, TC->left, a, TC->x - 1) + intree_check_tree_internal (TS, TC->right, TC->x + 1, b) + 1;
}
