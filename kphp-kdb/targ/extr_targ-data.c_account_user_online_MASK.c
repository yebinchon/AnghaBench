#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int user_id; int last_visited; scalar_t__ online_prev; scalar_t__ online_next; } ;
typedef  TYPE_1__ user_t ;
typedef  int /*<<< orphan*/  olist_t ;

/* Variables and functions */
 int /*<<< orphan*/ * OHead ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 scalar_t__ FUNC1 (int) ; 
 int now ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int verbosity ; 

int FUNC8 (user_t *U) {
  if (!U) {
    return 0;
  }

  if (verbosity > 2) {
    FUNC0 (stderr, "setting last_visited for user %d to %d\n", U->user_id, now);
  }

  FUNC2 ();

  if (U->online_next) {
    FUNC6 (FUNC7 (U));
    if (verbosity > 2) {
      FUNC0 (stderr, "last_visited was %d, convert was %d\n", U->last_visited, FUNC3 (U->last_visited));
    }
    FUNC4 (FUNC3 (U->last_visited), -1);
  }

  if (FUNC1 (now)) {
    int p = FUNC3 (now);
    FUNC5 ((olist_t *)&OHead[p], FUNC7 (U));
    if (verbosity > 2) {
      FUNC0 (stderr, "new convert is %d\n", p);
    }
    FUNC4 (p, +1);
  } else {
    U->online_next = U->online_prev = 0;
  }

  U->last_visited = now;

  return 1;
}