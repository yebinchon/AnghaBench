
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree_num_t ;


 int * NIL ;
 int assert (int) ;
 int zfree (int *,int) ;

__attribute__((used)) static void free_tree_num_node (tree_num_t *T) {
  assert (T != NIL);
  zfree (T, sizeof (tree_num_t));
}
