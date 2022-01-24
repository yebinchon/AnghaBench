#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ origin; int /*<<< orphan*/  content_len; int /*<<< orphan*/  content; } ;
typedef  TYPE_1__ git_diff_line ;
typedef  int /*<<< orphan*/  git_diff_hunk ;
typedef  int /*<<< orphan*/  git_diff_delta ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ GIT_DIFF_LINE_ADDITION ; 
 scalar_t__ GIT_DIFF_LINE_CONTEXT ; 
 scalar_t__ GIT_DIFF_LINE_DELETION ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * stdout ; 

int FUNC2(
	const git_diff_delta *d,
	const git_diff_hunk *h,
	const git_diff_line *l,
	void *p)
{
	FILE *fp = (FILE*)p;

	(void)d; (void)h;

	if (!fp)
		fp = stdout;

	if (l->origin == GIT_DIFF_LINE_CONTEXT ||
		l->origin == GIT_DIFF_LINE_ADDITION ||
		l->origin == GIT_DIFF_LINE_DELETION)
		FUNC0(l->origin, fp);

	FUNC1(l->content, 1, l->content_len, fp);

	return 0;
}