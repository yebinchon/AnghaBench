
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct item* item; } ;
typedef TYPE_1__ tree_t ;
struct item {int dummy; } ;
typedef int hash_t ;


 int Root ;
 int assert (int) ;
 int lrand48 () ;
 int tree_insert (int ,int ,struct item*,int,unsigned int) ;
 TYPE_1__* tree_lookup (int ,int ,struct item*) ;

__attribute__((used)) static void item_add_word (struct item *I, hash_t word, unsigned freqs) {
  tree_t *T = tree_lookup (Root, word, I);
  if (!T) {
    int y = lrand48 ();
    Root = tree_insert (Root, word, I, y, freqs);
  } else {
    assert (T->item == I);
  }
}
