
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stree_t ;


 int online_tree_nodes ;
 int zfree (int *,int) ;

__attribute__((used)) static inline void free_stree_node (stree_t *T) {
  --online_tree_nodes;
  zfree (T, sizeof (stree_t));
}
