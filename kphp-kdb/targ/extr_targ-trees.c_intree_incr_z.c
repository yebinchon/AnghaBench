
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int treespace_t ;
typedef int treeref_t ;
struct intree_node {int x; int z; int right; int left; } ;


 struct intree_node* TS_NODE (int ) ;
 int free_intree_node (int ,int ) ;
 int intree_insert (int ,int ,int ) ;
 int intree_merge (int ,int ,int ) ;
 int new_intree_node (int ) ;

inline treeref_t intree_incr_z (treespace_t TS, treeref_t T, int x, int dz, int *nodes_num) {
  treeref_t Q = T, *QP = &Q;
  if (!dz) {
    return T;
  }
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
    TC->z += dz;
    if (!TC->z) {
      *QP = intree_merge (TS, TC->left, TC->right);
      free_intree_node (TS, T);
      --*nodes_num;
    }
    return Q;
  }

  T = new_intree_node (TS);
  struct intree_node *TC = TS_NODE(T);
  TC->x = x;
  TC->z = dz;
  ++*nodes_num;
  return intree_insert (TS, Q, T);
}
