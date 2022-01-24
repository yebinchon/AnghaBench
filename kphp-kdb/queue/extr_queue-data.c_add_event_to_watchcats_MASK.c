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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (long long) ; 
 int my_verbosity ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC4 (char*) ; 

void FUNC5 (long long *ids, int idn, char *event) {
  int len = FUNC4 (event), i;

  if (my_verbosity > 1) {
    FUNC1 (stderr, "add %s to ", event);
  }
  for (i = 0; i < idn; i++) {
    if (my_verbosity > 1) {
      FUNC1 (stderr, " %lld", ids[i]);
    }
    FUNC0 (FUNC2 (FUNC3 (ids[i]), 0), event, len, 0, 0, 0);
  }
  if (my_verbosity > 1) {
    FUNC1 (stderr, "\n");
  }
}