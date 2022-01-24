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
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*,...) ; 

void FUNC6(void)
{
	git_buf buf2 = GIT_BUF_INIT;
	FUNC5(&buf2, "%s %s %d ", "shoop", "da", 23);
	FUNC0(FUNC4(&buf2) == 0);
	FUNC1(FUNC2(&buf2), "shoop da 23 ");

	FUNC5(&buf2, "%s %d", "woop", 42);
	FUNC0(FUNC4(&buf2) == 0);
	FUNC1(FUNC2(&buf2), "shoop da 23 woop 42");
	FUNC3(&buf2);
}