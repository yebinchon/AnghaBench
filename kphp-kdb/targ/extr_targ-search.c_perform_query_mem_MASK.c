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
typedef  int /*<<< orphan*/  condition_t ;

/* Variables and functions */
 int /*<<< orphan*/  Qq ; 
 int R_tot ; 
 scalar_t__* User ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int max_uid ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int verbosity ; 

int FUNC5 (void) {
  int i;

  if (verbosity > 1) {
    FUNC1 (stderr, "performing query by complete scanning with pre-compiled condition\n");
  }
  condition_t C = FUNC0 (Qq, 1);

  for (i = 0; i <= max_uid; i++) {
    if (User[i] && FUNC4 (User[i], C, i)) {
      FUNC3 (i);
    }
  }

  FUNC2();

  return R_tot;
}