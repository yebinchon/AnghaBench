
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ word; struct TYPE_9__* right; struct TYPE_9__* left; TYPE_1__* item; } ;
typedef TYPE_2__ tree_t ;
struct TYPE_10__ {scalar_t__ item_id; } ;
typedef TYPE_3__ item_t ;
typedef scalar_t__ hash_t ;
struct TYPE_8__ {scalar_t__ item_id; } ;



__attribute__((used)) static void tree_split (tree_t **L, tree_t **R, tree_t *T, hash_t word, item_t *item) {
  if (!T) { *L = *R = 0; return; }
  if (word < T->word || (word == T->word && item->item_id < T->item->item_id)) {
    *R = T;
    tree_split (L, &T->left, T->left, word, item);
  } else {
    *L = T;
    tree_split (&T->right, R, T->right, word, item);
  }
}
