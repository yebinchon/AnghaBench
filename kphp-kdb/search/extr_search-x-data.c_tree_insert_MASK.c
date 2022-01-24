#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {void* word; int y; struct TYPE_11__* right; struct TYPE_11__* left; TYPE_2__* item; } ;
typedef  TYPE_1__ tree_t ;
struct TYPE_12__ {scalar_t__ item_id; } ;
typedef  TYPE_2__ item_t ;
typedef  void* hash_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**,TYPE_1__**,TYPE_1__*,void*,TYPE_2__*) ; 

__attribute__((used)) static tree_t *FUNC2 (tree_t *T, hash_t word, item_t *item, int y, unsigned freqs) {
  tree_t *P;
  if (!T) {
    P = FUNC0 (y, freqs);
    P->word = word;
    P->item = item;
    return P;
  }
  if (T->y >= y) {
    if (word < T->word || (word == T->word && item->item_id < T->item->item_id)) {
      T->left = FUNC2 (T->left, word, item, y, freqs);
    } else {
      T->right = FUNC2 (T->right, word, item, y, freqs);
    }
    return T;
  }
  P = FUNC0 (y, freqs);
  P->word = word;
  P->item = item;
  FUNC1 (&P->left, &P->right, T, word, item);
  return P;
}