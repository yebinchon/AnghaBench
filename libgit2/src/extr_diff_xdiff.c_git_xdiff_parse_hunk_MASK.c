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
struct TYPE_3__ {int old_start; int old_lines; int new_start; int new_lines; } ;
typedef  TYPE_1__ git_diff_hunk ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (char const**,int*) ; 

__attribute__((used)) static int FUNC2(git_diff_hunk *hunk, const char *header)
{
	/* expect something of the form "@@ -%d[,%d] +%d[,%d] @@" */
	if (*header != '@')
		goto fail;
	if (FUNC1(&header, &hunk->old_start) < 0)
		goto fail;
	if (*header == ',') {
		if (FUNC1(&header, &hunk->old_lines) < 0)
			goto fail;
	} else
		hunk->old_lines = 1;
	if (FUNC1(&header, &hunk->new_start) < 0)
		goto fail;
	if (*header == ',') {
		if (FUNC1(&header, &hunk->new_lines) < 0)
			goto fail;
	} else
		hunk->new_lines = 1;
	if (hunk->old_start < 0 || hunk->new_start < 0)
		goto fail;

	return 0;

fail:
	FUNC0(GIT_ERROR_INVALID, "malformed hunk header from xdiff");
	return -1;
}