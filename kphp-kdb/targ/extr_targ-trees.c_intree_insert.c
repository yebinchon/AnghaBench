
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int treespace_t ;
typedef scalar_t__ treeref_t ;
struct intree_node {int x; scalar_t__ right; scalar_t__ left; } ;


 unsigned int NODE_Y (struct intree_node*,scalar_t__) ;
 struct intree_node* TS_NODE (scalar_t__) ;
 int intree_split (int ,scalar_t__,int,scalar_t__*,scalar_t__*) ;

inline treeref_t intree_insert (treespace_t TS, treeref_t T, treeref_t N) {
  treeref_t Q = T, *QP = &Q;
  struct intree_node *NP = TS_NODE(N);
  int NX = NP->x;
  unsigned NY = NODE_Y(NP, N);
  while (T) {
    struct intree_node *TC = TS_NODE(T);
    unsigned TY = NODE_Y(TC, T);
    if (NY >= TY) {
      break;
    }
    if (NX < TC->x) {
      QP = &TC->left;
      T = TC->left;
    } else {
      QP = &TC->right;
      T = TC->right;
    }
  }
  intree_split (TS, T, NX, &NP->left, &NP->right);
  *QP = N;
  return Q;
}
