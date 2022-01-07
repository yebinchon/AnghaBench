
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ltree_t ;


 int tree_nodes ;
 int zfree (int *,int) ;

__attribute__((used)) static void free_ltree_node (ltree_t *T) {
  zfree (T, sizeof (ltree_t));
  --tree_nodes;
}
