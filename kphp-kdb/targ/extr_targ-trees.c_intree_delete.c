
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int treespace_t ;
typedef scalar_t__ treeref_t ;


 int free_intree_node (int ,scalar_t__) ;
 scalar_t__ intree_remove (int ,scalar_t__,int,scalar_t__*) ;

inline treeref_t intree_delete (treespace_t TS, treeref_t T, int x) {
  treeref_t R, N;
  R = intree_remove (TS, T, x, &N);
  if (N) {
    free_intree_node (TS, N);
  }
  return R;
}
