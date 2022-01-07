
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int treespace_t ;
typedef int treeref_t ;
struct intree_node {int right; int x; int left; } ;


 struct intree_node* TS_NODE (int ) ;

int intree_unpack (treespace_t TS, treeref_t T, int *A) {
  int t;
  if (!T) { return 0; }
  struct intree_node *TC = TS_NODE (T);
  A += t = intree_unpack (TS, TC->left, A);
  *A++ = TC->x;
  return t + 1 + intree_unpack (TS, TC->right, A);
}
