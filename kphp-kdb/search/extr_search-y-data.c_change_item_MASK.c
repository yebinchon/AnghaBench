#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct index_item {int extra; } ;
struct TYPE_7__ {int extra; int mask; int /*<<< orphan*/  words; } ;
typedef  TYPE_1__ item_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADD_NOT_FOUND_ITEM ; 
 int FLAG_DELETED ; 
 int /*<<< orphan*/  ONLY_FIND ; 
 int /*<<< orphan*/  Q ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  creation_date ; 
 int /*<<< orphan*/  cur_wordlist_head ; 
 int /*<<< orphan*/  del_items ; 
 int /*<<< orphan*/  FUNC2 (long long) ; 
 struct index_item* FUNC3 (long long) ; 
 TYPE_1__* FUNC4 (long long,int /*<<< orphan*/ ) ; 
 scalar_t__ import_only_mode ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int log_last_ts ; 
 int /*<<< orphan*/  mod_items ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct index_item*) ; 
 int FUNC8 (char const*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long long,int*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int,int*) ; 
 int /*<<< orphan*/  tag_owner ; 
 int /*<<< orphan*/  universal ; 
 int /*<<< orphan*/  FUNC10 (int,char*,char const*,int,long long,int,int) ; 

__attribute__((used)) static int FUNC11 (const char *text, int len, long long item_id, int rate, int rate2) {
  item_t *I;
  struct index_item *II;

  FUNC0 (text && len >= 0 && len < 65536 && !text[len]);
  FUNC0 (item_id > 0);

  if (!FUNC2 (item_id)) {
    return 0;
  }

  if (import_only_mode) {
    return 1;
  }

  FUNC10 (4, "change_item: text=%s, len = %d, item_id = %016llx, rate = %d, rate2 = %d\n",
    text, len, item_id, rate, rate2);

  II = FUNC3 (item_id);
  if (II) {
    mod_items++;
    II->extra |= FLAG_DELETED;
    //item_clear_wordlist ((item_t *) II, get_index_item_words_ptr (II, 0));
  }

  I = FUNC4 (item_id, ONLY_FIND);
  if (I) {
    if (I->extra & FLAG_DELETED) {
      del_items--;
      I->extra ^= FLAG_DELETED;
    }
    FUNC6 (I, &I->words);
  } else {
    I = FUNC4 (item_id, ADD_NOT_FOUND_ITEM);
    if (!I) {
      return 0;
    }
  }

  if (II) {
    FUNC7 (I, II);
  }

  int rates[4], mask = 1 + 2, l = 2;
  rates[0] = rate;
  rates[1] = rate2;
  if (!creation_date || !(I->mask & 4)) {
    rates[l++] = log_last_ts;
    mask += 4;
  }

  FUNC1 ();
  int positions;
  int Wc = FUNC8 (text, len, Q, 65536, universal, tag_owner, item_id, &positions);
  FUNC5 (I, Wc);
  I->words = cur_wordlist_head;
  FUNC9 (I, mask, rates);
  return 1;
}