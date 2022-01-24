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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* stdout ; 

int FUNC3(
	const git_diff_delta *delta,
	const git_diff_hunk *hunk,
	const git_diff_line *line,
	void *payload)
{
	FILE *fp = payload ? payload : stdout;

	FUNC0(delta); FUNC0(hunk);

	if (line->origin == GIT_DIFF_LINE_CONTEXT ||
		line->origin == GIT_DIFF_LINE_ADDITION ||
		line->origin == GIT_DIFF_LINE_DELETION)
		FUNC1(line->origin, fp);
	FUNC2(line->content, 1, line->content_len, fp);
	return 0;
}