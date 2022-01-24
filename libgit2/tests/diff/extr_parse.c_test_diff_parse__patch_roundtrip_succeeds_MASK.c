#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_patch ;
typedef  int /*<<< orphan*/  git_diff ;
struct TYPE_6__ {int /*<<< orphan*/  ptr; int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_DIFF_FORMAT_PATCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 

void FUNC10(void)
{
	const char buf1[] = "a\n", buf2[] = "b\n";
	git_buf patchbuf = GIT_BUF_INIT, diffbuf = GIT_BUF_INIT;
	git_patch *patch;
	git_diff *diff;

	FUNC1(FUNC7(&patch, buf1, FUNC9(buf1), "obj1", buf2, FUNC9(buf2), "obj2", NULL));
	FUNC1(FUNC8(&patchbuf, patch));

	FUNC1(FUNC4(&diff, patchbuf.ptr, patchbuf.size));
	FUNC1(FUNC5(&diffbuf, diff, GIT_DIFF_FORMAT_PATCH));

	FUNC0(patchbuf.ptr, diffbuf.ptr);

	FUNC6(patch);
	FUNC3(diff);
	FUNC2(&patchbuf);
	FUNC2(&diffbuf);
}