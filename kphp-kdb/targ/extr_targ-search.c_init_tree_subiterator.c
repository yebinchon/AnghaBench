
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int treespace_t ;
typedef int treeref_t ;
struct tree_subiterator {int* S; long sp; int mult; int pos; } ;
struct intree_node {int left; int z; int x; } ;


 long MAX_DEPTH ;
 struct intree_node* TS_NODE (int) ;
 int WordSpace ;
 int assert (int) ;

void init_tree_subiterator (struct tree_subiterator *TI, treeref_t tree) {
  assert (tree);
  long i = 0;
  treespace_t TS = WordSpace;
  struct intree_node *TC;
  do {
    TC = TS_NODE (tree);
    TI->S[i++] = tree;
    tree = TC->left;
  } while (tree);
  TI->pos = TC->x;
  TI->mult = TC->z;
  TI->sp = i;
  assert (i <= MAX_DEPTH);
}
