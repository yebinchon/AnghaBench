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
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC7(void)
{
	git_buf a = GIT_BUF_INIT;
	git_buf b = GIT_BUF_INIT;

	FUNC5(&a, "foo");
	FUNC0(FUNC4(&a) == 0);
	FUNC5(&b, "bar");
	FUNC0(FUNC4(&b) == 0);

	FUNC1("foo", FUNC2(&a));
	FUNC1("bar", FUNC2(&b));

	FUNC6(&a, &b);

	FUNC1("bar", FUNC2(&a));
	FUNC1("foo", FUNC2(&b));

	FUNC3(&a);
	FUNC3(&b);
}