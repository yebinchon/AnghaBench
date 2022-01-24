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
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* username ; 
 int verbosity ; 

void FUNC3 (void)
{
  if (FUNC0 (username) < 0) {
    FUNC2 (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    FUNC1 (1);
  }
  if (verbosity >= 2) {
    FUNC2 (stderr, "User changed to %s\n", username ? username : "(none)");
  }
}