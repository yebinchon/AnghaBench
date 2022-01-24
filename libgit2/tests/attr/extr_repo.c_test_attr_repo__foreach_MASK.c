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
 int /*<<< orphan*/  CANCEL_VALUE ; 
 int /*<<< orphan*/  cancel_iteration ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  count_attrs ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int*) ; 

void FUNC4(void)
{
	int count;

	count = 0;
	FUNC2(FUNC3(
		g_repo, 0, "root_test1", &count_attrs, &count));
	FUNC0(count == 2);

	count = 0;
	FUNC2(FUNC3(g_repo, 0, "sub/subdir_test1",
		&count_attrs, &count));
	FUNC0(count == 4); /* repoattr, rootattr, subattr, negattr */

	count = 0;
	FUNC2(FUNC3(g_repo, 0, "sub/subdir_test2.txt",
		&count_attrs, &count));
	FUNC0(count == 6); /* repoattr, rootattr, subattr, reposub, negattr, another */

	count = 2;
	FUNC1(
		CANCEL_VALUE, FUNC3(
			g_repo, 0, "sub/subdir_test1", &cancel_iteration, &count)
	);
}