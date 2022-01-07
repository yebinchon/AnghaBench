
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * item; } ;
typedef TYPE_1__ tree_t ;
typedef int item_t ;
typedef int hash_t ;


 int Root ;
 int assert (int) ;
 int lrand48 () ;
 int tree_insert (int ,int ,int *,int,int*) ;
 TYPE_1__* tree_lookup (int ,int ,int *) ;

__attribute__((used)) static void item_add_word (item_t *I, hash_t word, int *positions) {
  tree_t *T = tree_lookup (Root, word, I);
  if (!T) {
    int y = lrand48 ();
    Root = tree_insert (Root, word, I, y, positions);
  } else {
    assert (T->item == I);
  }
}
