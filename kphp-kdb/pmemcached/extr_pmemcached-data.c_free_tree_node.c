
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree_t ;


 int alloc_tree_nodes ;
 int entry_memory ;
 int zzfree (int *,int) ;

__attribute__((used)) static void free_tree_node (tree_t *T) {
  zzfree (T, sizeof (tree_t));
  alloc_tree_nodes--;
  entry_memory -= sizeof (tree_t);
}
