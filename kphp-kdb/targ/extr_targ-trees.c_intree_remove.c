
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int treespace_t ;
typedef scalar_t__ treeref_t ;
struct intree_node {int x; scalar_t__ right; scalar_t__ left; } ;


 struct intree_node* TS_NODE (scalar_t__) ;
 scalar_t__ intree_merge (int ,scalar_t__,scalar_t__) ;

inline treeref_t intree_remove (treespace_t TS, treeref_t T, int x, treeref_t *N) {
  treeref_t Q = T, *QP = &Q;
  while (T) {
    struct intree_node *TC = TS_NODE(T);
    if (x == TC->x) {
      break;
    }
    if (x < TC->x) {
      QP = &TC->left;
      T = TC->left;
    } else {
      QP = &TC->right;
      T = TC->right;
    }
  }
  if (T) {
    struct intree_node *TC = TS_NODE(T);
    *QP = intree_merge (TS, TC->left, TC->right);
  }
  *N = T;
  return Q;
}
