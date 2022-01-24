#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int item_id; } ;
typedef  TYPE_1__ item_t ;
struct TYPE_7__ {int cur_y; int tag_word; TYPE_1__* cur; } ;

/* Variables and functions */
 int FLAG_ENTRY_SORT_SEARCH ; 
 TYPE_3__** H ; 
 int HC ; 
 scalar_t__ IHE ; 
 int MAX_MISMATCHED_WORDS ; 
 scalar_t__* QT ; 
 int /*<<< orphan*/ * QW ; 
 int /*<<< orphan*/  Q_min_priority ; 
 int Q_order ; 
 int Q_skip_mismatch_words_if_complete_case_found ; 
 int Q_words ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 

__attribute__((used)) static void FUNC7 (void) {
  FUNC6 (3, "priority_sort_query\n");
  Q_skip_mismatch_words_if_complete_case_found = (Q_order & FLAG_ENTRY_SORT_SEARCH) ? 1 : 0;
  int found = 0;
  int i, j, t, p, tags = 0;
  item_t *I;
  HC = 0;
  for (i = 0; i < Q_words; i++) {
    tags += QT[i];
    if (FUNC2 (IHE+i, QW[i], QT[i], 0)) {
      FUNC3 (IHE+i);
    } else {
      if (QT[i]) {
        /* tag not found */
        return;
      }
    }
  }
  FUNC6 (3, "HC = %d, tags = %d, Q_words = %d\n", HC, tags, Q_words);

  if (HC + MAX_MISMATCHED_WORDS < Q_words) {
    return;
  }

  I = NULL;
  i = j = t = 0;
  int min_priority = Q_words - MAX_MISMATCHED_WORDS;
  if (min_priority < 1) {
    min_priority = 1;
  }

  if (min_priority <= tags && tags < Q_words) {
    min_priority = tags + 1;
  }
  FUNC6 (3, "min_priority = %d\n", min_priority);

  while (HC) {
    FUNC6 (3, "item_id = %lld\n", H[1]->cur->item_id);
    FUNC0 (H[1]->cur);
    if (H[1]->cur != I) {
      if (I != NULL && i >= min_priority && t == tags) {
        if (!Q_min_priority || i == j) {
          p = 6 - (Q_words - i);
          if (Q_words == i) {
            int dp = 3 - (i - j);
            if (dp < 0) { dp = 0; }
            p += dp;
          }
          FUNC5 (I, p, &found);
        }
      }
      I = H[1]->cur;
      i = 1;
      j = H[1]->cur_y & 1;
      t = H[1]->tag_word;
    } else {
      i++;
      j += H[1]->cur_y & 1;
      t += H[1]->tag_word;
    }
    FUNC1 (H[1]);
    FUNC4 ();
  }
  if (I != NULL && i >= min_priority && t == tags) {
    if (!Q_min_priority || i == j) {
      p = 6 - (Q_words - i);
      if (Q_words == i) {
        int dp = 3 - (i - j);
        if (dp < 0) { dp = 0; }
        p += dp;
      }
      FUNC5 (I, p, &found);
    }
  }
}