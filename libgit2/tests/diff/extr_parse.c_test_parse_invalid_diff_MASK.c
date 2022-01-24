#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_diff ;
struct TYPE_5__ {int /*<<< orphan*/  size; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_ERROR ; 
 char const* PATCH_BINARY_DELTA ; 
 char const* PATCH_BINARY_LITERAL ; 
 char const* PATCH_ORIGINAL_TO_CHANGE_FIRSTLINE ; 
 char const* PATCH_ORIGINAL_TO_CHANGE_MIDDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(const char *invalid_diff)
{
	git_diff *diff;
	git_buf buf = GIT_BUF_INIT;

	/* throw some random (legitimate) diffs in with the given invalid
	 * one.
	 */
	FUNC2(&buf, PATCH_ORIGINAL_TO_CHANGE_FIRSTLINE);
	FUNC2(&buf, PATCH_BINARY_DELTA);
	FUNC2(&buf, invalid_diff);
	FUNC2(&buf, PATCH_ORIGINAL_TO_CHANGE_MIDDLE);
	FUNC2(&buf, PATCH_BINARY_LITERAL);

	FUNC0(GIT_ERROR,
		FUNC3(&diff, buf.ptr, buf.size));

	FUNC1(&buf);
}