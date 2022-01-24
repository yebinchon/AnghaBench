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
 scalar_t__ Q_hash_group_mode ; 
 int /*<<< orphan*/  Q_words ; 
 int R_tot ; 
 int R_tot_groups ; 
 int /*<<< orphan*/  Root ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int verbosity ; 

int FUNC7 (void) {
  FUNC0 ();

  if (!Q_words || FUNC2 () )  {
    return 0;
  }

  if (verbosity >= 3) {
    int t_depth = FUNC6 (Root, 0);
    FUNC3 ("tree depth = %d\n", t_depth);
  }

  FUNC5 ();

  FUNC1 ();
  FUNC4 ();
  return Q_hash_group_mode ? R_tot_groups : R_tot;
}