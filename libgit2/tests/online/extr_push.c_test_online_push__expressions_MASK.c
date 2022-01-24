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
 int /*<<< orphan*/  FUNC0 (char const**) ; 
 int /*<<< orphan*/  FUNC1 (char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(void)
{
	/* TODO: Expressions in refspecs doesn't actually work yet */
	const char *specs_left_expr[] = { "refs/heads/b2~1:refs/heads/b2" };

	/* TODO: Find a more precise way of checking errors than a exit code of -1. */
	FUNC1(specs_left_expr, FUNC0(specs_left_expr),
		NULL, 0,
		NULL, 0, -1, 0, 0);
}