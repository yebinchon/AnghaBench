
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {size_t nc; int * c; } ;


 int assert (size_t) ;
 int tree_delete (int ) ;

void tree_del_child (struct tree *P) {
  assert (P->nc);
  tree_delete (P->c[--P->nc]);
}
