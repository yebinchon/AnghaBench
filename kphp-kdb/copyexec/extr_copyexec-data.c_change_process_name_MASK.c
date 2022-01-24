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
 int /*<<< orphan*/  PR_SET_NAME ; 
 int argc_copy ; 
 char** argv_copy ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char*) ; 

void FUNC5 (char *new_name) {
  /* change process name in top */
  if (FUNC1 (PR_SET_NAME, (unsigned long) new_name, 0, 0, 0) < 0) {
    FUNC4 (1, "changing process name to %s failed. %m\n", new_name);
  }
  /* change process name in ps */
  int i;
  for (i = 1; i < argc_copy; i++) {
    FUNC0 (argv_copy[i], 0, FUNC2 (argv_copy[i]));
  }
  i = FUNC2 (new_name) - FUNC2 (argv_copy[0]);
  if (i < 0) {
    i = 0;
  }
  FUNC3 (argv_copy[0], new_name + i, FUNC2 (argv_copy[0]));
}