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
typedef  int /*<<< orphan*/  git_reference ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ g_repo ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,scalar_t__,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(void)
{
	git_reference *a, *b;

	FUNC1(FUNC5(&a, g_repo, "HEAD"));
	FUNC1(FUNC3(&b, a));

	FUNC0(FUNC2(a, b) == 0);
	FUNC0(FUNC6(b) == g_repo);

	FUNC4(b);
	FUNC4(a);
}