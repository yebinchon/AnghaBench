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
struct TYPE_6__ {int /*<<< orphan*/  ptr; int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  PATCH_ORIGINAL_TO_CHANGE_MIDDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 

void FUNC7(void)
{
	git_buf diff = GIT_BUF_INIT, rendered = GIT_BUF_INIT;
	git_patch *patch;

	FUNC1(FUNC3(&diff, PATCH_ORIGINAL_TO_CHANGE_MIDDLE));
	FUNC1(FUNC5(&patch, diff.ptr, diff.size, NULL));
	FUNC2(&diff);

	FUNC1(FUNC6(&rendered, patch));
	FUNC0(PATCH_ORIGINAL_TO_CHANGE_MIDDLE, rendered.ptr);
	FUNC2(&rendered);

	FUNC1(FUNC6(&rendered, patch));
	FUNC0(PATCH_ORIGINAL_TO_CHANGE_MIDDLE, rendered.ptr);
	FUNC2(&rendered);

	FUNC4(patch);
}