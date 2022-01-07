
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ltree_t ;


 scalar_t__ alloc_ltree_nodes ;
 int assert (int) ;
 int ltree_node_size ;
 int zfree (int *,int ) ;

__attribute__((used)) static void free_ltree_node (ltree_t *T) {
  assert (--alloc_ltree_nodes >= 0);
  zfree (T, ltree_node_size);
}
