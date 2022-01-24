#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree_t ;
struct index_item {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/ * words; } ;
typedef  TYPE_1__ item_t ;
struct TYPE_7__ {int /*<<< orphan*/  freqs; int /*<<< orphan*/  word; } ;

/* Variables and functions */
 int /*<<< orphan*/  ONLY_FIND ; 
 TYPE_4__* Q ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * cur_wordlist_head ; 
 int FUNC1 (char const* const,int,int /*<<< orphan*/ ,TYPE_4__*,int,int /*<<< orphan*/ ,long long) ; 
 int /*<<< orphan*/  FUNC2 (long long) ; 
 struct index_item* FUNC3 (long long) ; 
 int /*<<< orphan*/ ** FUNC4 (struct index_item*,int) ; 
 TYPE_1__* FUNC5 (long long,int /*<<< orphan*/ ) ; 
 scalar_t__ import_only_mode ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tag_owner ; 

__attribute__((used)) static int FUNC7 (const char *const text, int len, long long item_id) {
  item_t *I = NULL;
  struct index_item *II = NULL;
  tree_t **p_words;

  FUNC0 (text && len >= 0 && len < 256 && !text[len]);
  FUNC0 (item_id > 0);
  if (!FUNC2 (item_id)) {
    return 0;
  }
  if (import_only_mode) {
    return 1;
  }

  II = FUNC3 (item_id);
  if (II != NULL) {
    p_words = FUNC4 (II, 1);
    I = (item_t *) II;
  } else {
    I = FUNC5 (item_id, ONLY_FIND);
    if (I == NULL) {
      return 0;
    }
    p_words = &(I->words);
  }

  cur_wordlist_head = *p_words;
  int i, Wc = FUNC1 (text, len, 0, Q, 65536, tag_owner, item_id);
  for (i = 0; i < Wc; i++) {
    FUNC6 (I, Q[i].word, Q[i].freqs);
  }
  *p_words = cur_wordlist_head;

  return 1;
}