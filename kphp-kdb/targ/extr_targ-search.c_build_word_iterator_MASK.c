#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ treeref_t ;
struct TYPE_4__ {scalar_t__ mult; scalar_t__ pos; } ;
struct TYPE_3__ {scalar_t__ mult; scalar_t__ pos; } ;
struct wordlist_tree_iterator {scalar_t__ mult; scalar_t__ pos; TYPE_2__ TS; TYPE_1__ WS; int /*<<< orphan*/  (* jump_to ) (int /*<<< orphan*/ ,scalar_t__) ;} ;
struct wordlist_iterator {scalar_t__ mult; scalar_t__ pos; int /*<<< orphan*/  jump_to; TYPE_1__ WS; } ;
struct tree_iterator {scalar_t__ mult; scalar_t__ pos; int /*<<< orphan*/  jump_to; TYPE_2__ TS; } ;
struct hash_word {scalar_t__ word_tree; } ;
typedef  int /*<<< orphan*/  iterator_t ;
typedef  int /*<<< orphan*/  hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct hash_word* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,unsigned char*,int) ; 
 int /*<<< orphan*/  tree_iterator_jump_to ; 
 int /*<<< orphan*/  wordlist_iterator_jump_to ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 void* FUNC7 (int) ; 

iterator_t FUNC8 (hash_t word) {
  struct hash_word *W = FUNC2 (word, 0);
  treeref_t tree = W ? W->word_tree : 0;
  int len;
  unsigned char *data = FUNC3 (word, &len);
  FUNC0 (tree || data);
  if (!tree && !data) {
    return FUNC1 ();
  }
  if (!data) {
    struct tree_iterator *I = FUNC7 (sizeof (struct tree_iterator));
    FUNC4 (&I->TS, tree);
    FUNC0 ((I->mult = I->TS.mult) > 0);
    I->pos = I->TS.pos;
    I->jump_to = tree_iterator_jump_to;
    return (iterator_t) I;
  }
  if (!tree) {
    struct wordlist_iterator *I = FUNC7 (sizeof (struct wordlist_iterator));
    FUNC5 (&I->WS, data, len);
    FUNC0 ((I->mult = I->WS.mult) > 0);
    I->pos = I->WS.pos;
    I->jump_to = wordlist_iterator_jump_to;
    return (iterator_t) I;
  }
  struct wordlist_tree_iterator *I = FUNC7 (sizeof (struct wordlist_tree_iterator));
  FUNC5 (&I->WS, data, len);
  FUNC4 (&I->TS, tree);
  I->jump_to = wordlist_tree_iterator_jump_to;
  if (I->TS.pos < I->WS.pos) {
    FUNC0 ((I->mult = I->TS.mult) > 0);
    I->pos = I->TS.pos;
  } else if (I->TS.pos > I->WS.pos) {
    FUNC0 ((I->mult = I->WS.mult) > 0);
    I->pos = I->WS.pos;
  } else if (I->TS.mult + I->WS.mult > 0) {
    I->mult = I->TS.mult + I->WS.mult;
    I->pos = I->TS.pos;
  } else {
    FUNC0 (I->TS.mult + I->WS.mult == 0);
    FUNC6 ((iterator_t) I, I->TS.pos + 1);
  }
  return (iterator_t) I;
}