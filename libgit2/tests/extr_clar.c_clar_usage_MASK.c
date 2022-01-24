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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(const char *arg)
{
	FUNC1("Usage: %s [options]\n\n", arg);
	FUNC1("Options:\n");
	FUNC1("  -sname        Run only the suite with `name` (can go to individual test name)\n");
	FUNC1("  -iname        Include the suite with `name`\n");
	FUNC1("  -xname        Exclude the suite with `name`\n");
	FUNC1("  -v            Increase verbosity (show suite names)\n");
	FUNC1("  -q            Only report tests that had an error\n");
	FUNC1("  -Q            Quit as soon as a test fails\n");
	FUNC1("  -l            Print suite names\n");
	FUNC1("  -r[filename]  Write summary file (to the optional filename)\n");
	FUNC0(-1);
}