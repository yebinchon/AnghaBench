
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {void* word; int y; struct TYPE_11__* right; struct TYPE_11__* left; TYPE_2__* item; } ;
typedef TYPE_1__ tree_t ;
struct TYPE_12__ {scalar_t__ item_id; } ;
typedef TYPE_2__ item_t ;
typedef void* hash_t ;


 TYPE_1__* new_tree_node (int,unsigned int) ;
 int tree_split (TYPE_1__**,TYPE_1__**,TYPE_1__*,void*,TYPE_2__*) ;

__attribute__((used)) static tree_t *tree_insert (tree_t *T, hash_t word, item_t *item, int y, unsigned freqs) {
  tree_t *P;
  if (!T) {
    P = new_tree_node (y, freqs);
    P->word = word;
    P->item = item;
    return P;
  }
  if (T->y >= y) {
    if (word < T->word || (word == T->word && item->item_id < T->item->item_id)) {
      T->left = tree_insert (T->left, word, item, y, freqs);
    } else {
      T->right = tree_insert (T->right, word, item, y, freqs);
    }
    return T;
  }
  P = new_tree_node (y, freqs);
  P->word = word;
  P->item = item;
  tree_split (&P->left, &P->right, T, word, item);
  return P;
}
