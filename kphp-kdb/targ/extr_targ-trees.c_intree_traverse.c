
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int treespace_t ;
typedef scalar_t__ treeref_t ;
struct intree_node {scalar_t__ right; scalar_t__ left; } ;
typedef int (* intree_traverse_func_t ) (struct intree_node*) ;


 struct intree_node* TS_NODE (scalar_t__) ;

int intree_traverse (treespace_t TS, treeref_t T, intree_traverse_func_t traverse_node) {
  if (T) {
    struct intree_node *TC = TS_NODE(T);
    return intree_traverse (TS, TC->left, traverse_node) + traverse_node (TC) + intree_traverse (TS, TC->right, traverse_node);
  } else {
    return 0;
  }
}
