
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree_ext_small_t ;


 int alloc_small_nodes ;
 int tree_ext_small_node_size ;
 int zfree (int *,int ) ;

__attribute__((used)) static inline void free_tree_ext_small_node (tree_ext_small_t *T) {
  alloc_small_nodes--;
  zfree (T, tree_ext_small_node_size);
}
