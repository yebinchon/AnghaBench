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
struct TYPE_7__ {int priority; scalar_t__ op; int /*<<< orphan*/  cur; } ;

/* Variables and functions */
 long long MAX_ITEM_ID ; 
 long long MIN_ITEM_ID ; 
 scalar_t__ Q_hash_group_mode ; 
 TYPE_1__* Q_root ; 
 int /*<<< orphan*/  Q_words ; 
 int R_tot ; 
 int R_tot_groups ; 
 long long FUNC0 (TYPE_1__*,long long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 scalar_t__ qn_false ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ reoptimize_flag ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int) ; 
 int verbosity ; 

int FUNC9 (void) {
  long long item_id;

  if (verbosity > 1) {
    FUNC3 (stderr, "performing extended query: root=%p\n", Q_root);
    FUNC2 (Q_root);
    FUNC3 (stderr, "\n");
  }

  FUNC1 (Q_root && !Q_words);
  FUNC7 ();

  if (verbosity > 1) {
    FUNC3 (stderr, "after killing duplicate words: root=%p\n", Q_root);
    FUNC2 (Q_root);
    FUNC3 (stderr, "\n");
  }

  reoptimize_flag = 0;
  if (FUNC6 (Q_root) < 0) {
    return 0;
  }

  item_id = MIN_ITEM_ID;

  do {
    if (reoptimize_flag) {
      Q_root = FUNC4 (Q_root);
      reoptimize_flag = 0;
      if (verbosity > 1) {
        FUNC3 (stderr, "query after optimization: root=%p\n", Q_root);
        FUNC2 (Q_root);
        FUNC3 (stderr, "\n");
      }
    }

    if (Q_root->op == qn_false) {
      break;
    }

    item_id = FUNC0 (Q_root, item_id + 1);
    if (item_id == MAX_ITEM_ID) {
      break;
    }
  } while (FUNC8 (Q_root->cur, Q_root->priority > 10 ? 10 : Q_root->priority));

  FUNC5();

  return Q_hash_group_mode ? R_tot_groups : R_tot;

}