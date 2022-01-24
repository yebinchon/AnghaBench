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
typedef  int /*<<< orphan*/  user ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  h_users ; 
 int /*<<< orphan*/  header ; 
 int /*<<< orphan*/  index_mode ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC8 () ; 
 int user_cnt ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * users ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ verbosity ; 
 int /*<<< orphan*/  volumes ; 
 int /*<<< orphan*/  write_only ; 

void FUNC11 (void) {
  if (verbosity > 0) {
    while (FUNC8() != -1) {
    }

    if (!write_only && !index_mode) {
      int i;
      for (i = 1; i < user_cnt; i++) {
        user *u = &users[i];
        FUNC9 (u);
      }
    }
    FUNC1 (users, sizeof (user) * user_cnt);

    FUNC6 (&volumes);
    FUNC7 (&h_users);
    FUNC4 (&header);

    FUNC5();

    FUNC10();

    FUNC3 (stderr, "Memory left: %ld\n", FUNC2());
    FUNC0 (FUNC2() == 0);
  }
}