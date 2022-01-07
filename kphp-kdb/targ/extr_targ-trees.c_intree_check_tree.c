
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int treespace_t ;
typedef int treeref_t ;


 int intree_check_tree_internal (int ,int ,int,int) ;

int intree_check_tree (treespace_t TS, treeref_t T) {
  return intree_check_tree_internal (TS, T, -1 << 31, ~(-1 << 31));
}
