
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int treespace_t ;
typedef scalar_t__ treeref_t ;
struct tree_subiterator {long sp; int pos; int mult; scalar_t__* S; } ;
struct intree_node {int x; int z; scalar_t__ left; scalar_t__ right; } ;


 int INFTY ;
 long MAX_DEPTH ;
 struct intree_node* TS_NODE (scalar_t__) ;
 int WordSpace ;
 int assert (int) ;

__attribute__((used)) static inline int tree_subiterator_next (struct tree_subiterator *TI) {
  assert (TI->sp > 0);
  long i = TI->sp;
  treespace_t TS = WordSpace;
  treeref_t T = TI->S[--i];
  struct intree_node *TC = TS_NODE (T);
  T = TC->right;
  while (T) {
    TC = TS_NODE (T);
    TI->S[i++] = T;
    T = TC->left;
  }
  assert (i <= MAX_DEPTH);
  TI->sp = i;
  if (!i) {
    return TI->pos = INFTY;
  }
  TC = TS_NODE (TI->S[i - 1]);
  TI->mult = TC->z;
  return TI->pos = TC->x;
}
