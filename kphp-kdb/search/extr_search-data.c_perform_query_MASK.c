#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int FLAG_PRIORITY_SORT_SEARCH ; 
 scalar_t__ Q_hash_group_mode ; 
 scalar_t__ Q_min_priority ; 
 int Q_order ; 
 scalar_t__ Q_root ; 
 int /*<<< orphan*/  Q_words ; 
 int R_tot ; 
 int R_tot_groups ; 
 int /*<<< orphan*/  Root ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ t_depth ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC9 (int,char*,int) ; 

int FUNC10 (void) {
  int i;
  FUNC0 ();

  if ((!Q_words && !Q_root) || FUNC4 () )  {
    return 0;
  }

  if (verbosity > 1 && t_depth < 0) {
    t_depth = FUNC8 (Root, 0);
    FUNC2 (stderr, "tree depth = %ld\n", t_depth);
  }

  if (Q_root) {
    Q_min_priority = 0;
    i = FUNC5 ();
    FUNC3 ();
    return i;
  }

  FUNC9 (3, "Q_order = %x\n", Q_order);
  if (Q_order & FLAG_PRIORITY_SORT_SEARCH) {
    FUNC7 ();
  } else {
    FUNC1 ();
  }

  FUNC3 ();
  FUNC6 ();
  return Q_hash_group_mode ? R_tot_groups : R_tot;
}