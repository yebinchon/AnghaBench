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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(const char *prefix, const char *arg)
{
	if (!FUNC4() || FUNC3())
		return;
	if (*arg == '-')
		return; /* flag */
	if (!FUNC1(prefix, arg))
		return;
	FUNC2(FUNC0("ambiguous argument '%s': both revision and filename\n"
	      "Use '--' to separate paths from revisions, like this:\n"
	      "'git <command> [<revision>...] -- [<file>...]'"), arg);
}