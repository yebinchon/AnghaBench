
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int treespace_t ;
typedef scalar_t__ treeref_t ;
struct intree_node {scalar_t__ right; scalar_t__ left; } ;


 struct intree_node* TS_NODE (scalar_t__) ;
 int free_intree_node (int ,scalar_t__) ;

int intree_free (treespace_t TS, treeref_t T) {
  int res = 0;
  if (T) {
    res++;
    struct intree_node *TC = TS_NODE(T);
    res += intree_free (TS, TC->left);
    res += intree_free (TS, TC->right);
    free_intree_node (TS, T);
  }
  return res;
}
