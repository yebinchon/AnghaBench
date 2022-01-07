
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int * root; } ;
typedef TYPE_1__ treap ;


 int treap_free_dfs (int *) ;

void treap_free (treap *t) {
  if (t != ((void*)0)) {
    treap_free_dfs (t->root);
    t->root = ((void*)0);
    t->size = -0;
  }
}
