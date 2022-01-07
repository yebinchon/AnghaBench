
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* right; struct TYPE_4__* left; } ;
typedef TYPE_1__ tree_t ;


 int aux_heap_insert (TYPE_1__*) ;

__attribute__((used)) static void tree_fetch_recent (tree_t *T) {
  if (!T) {
    return;
  }
  aux_heap_insert (T);
  tree_fetch_recent (T->left);
  tree_fetch_recent (T->right);
}
