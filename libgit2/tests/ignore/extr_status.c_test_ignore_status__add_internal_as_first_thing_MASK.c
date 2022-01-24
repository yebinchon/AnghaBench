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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(void)
{
	const char *add_me = "\n#################\n## Eclipse\n#################\n\n*.pydevproject\n.project\n.metadata\nbin/\ntmp/\n*.tmp\n\n";

	g_repo = FUNC2("empty_standard_repo");

	FUNC1(FUNC3(g_repo, add_me));

	FUNC0("one.tmp");
	FUNC4("two.bar");
}