#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int origin; int /*<<< orphan*/  content; } ;
typedef  TYPE_3__ git_diff_line ;
struct TYPE_12__ {int /*<<< orphan*/  new_lines; int /*<<< orphan*/  new_start; int /*<<< orphan*/  old_lines; int /*<<< orphan*/  old_start; } ;
typedef  TYPE_4__ git_diff_hunk ;
struct TYPE_10__ {int /*<<< orphan*/  path; } ;
struct TYPE_9__ {int /*<<< orphan*/  path; } ;
struct TYPE_13__ {int /*<<< orphan*/  status; TYPE_2__ new_file; TYPE_1__ old_file; } ;
typedef  TYPE_5__ git_diff_delta ;

/* Variables and functions */
 char* EXPECTED_HEADER ; 
 char* EXPECTED_HUNK ; 
 int GIT_DELTA_DELETED ; 
#define  GIT_DIFF_LINE_CONTEXT 131 
#define  GIT_DIFF_LINE_DELETION 130 
#define  GIT_DIFF_LINE_FILE_HDR 129 
#define  GIT_DIFF_LINE_HUNK_HDR 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(
	const git_diff_delta *delta,
	const git_diff_hunk *hunk,
	const git_diff_line *line,
	void *payload)
{
	switch (line->origin) {
	case GIT_DIFF_LINE_FILE_HDR:
		FUNC2(EXPECTED_HEADER, line->content);
		FUNC0(hunk == NULL);
		goto check_delta;

	case GIT_DIFF_LINE_HUNK_HDR:
		FUNC2(EXPECTED_HUNK, line->content);
		goto check_hunk;

	case GIT_DIFF_LINE_CONTEXT:
	case GIT_DIFF_LINE_DELETION:
		if (payload != NULL)
			return *(int *)payload;
		goto check_hunk;

	default:
		/* unexpected code path */
		return -1;
	}

check_hunk:
	FUNC0(hunk != NULL);
	FUNC1(1, hunk->old_start);
	FUNC1(2, hunk->old_lines);
	FUNC1(0, hunk->new_start);
	FUNC1(0, hunk->new_lines);

check_delta:
	FUNC2("subdir.txt", delta->old_file.path);
	FUNC2("subdir.txt", delta->new_file.path);
	FUNC1(GIT_DELTA_DELETED, delta->status);

	return 0;
}