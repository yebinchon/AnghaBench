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
struct TYPE_3__ {int /*<<< orphan*/ * file_status; int /*<<< orphan*/  files; } ;

/* Variables and functions */
 size_t GIT_DELTA_ADDED ; 
 size_t GIT_DELTA_DELETED ; 
 size_t GIT_DELTA_MODIFIED ; 
 size_t GIT_DELTA_TYPECHANGE ; 
 int /*<<< orphan*/ * a ; 
 int /*<<< orphan*/ * b ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  diff ; 
 int /*<<< orphan*/  diff_binary_cb ; 
 int /*<<< orphan*/  diff_file_cb ; 
 int /*<<< orphan*/  diff_hunk_cb ; 
 int /*<<< orphan*/  diff_line_cb ; 
 TYPE_1__ expect ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  opts ; 
 void* FUNC7 (int /*<<< orphan*/ ,char*) ; 

void FUNC8(void)
{
	/* this test shows that it is not needed */

	g_repo = FUNC3("issue_1397");

	FUNC4(g_repo, "core.autocrlf", true);

	FUNC0((a = FUNC7(g_repo, "8a7ef04")) != NULL);
	FUNC0((b = FUNC7(g_repo, "7f483a7")) != NULL);

	FUNC2(FUNC6(&diff, g_repo, a, b, &opts));

	FUNC2(FUNC5(diff,
		diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &expect));

	FUNC1(1, expect.files);
	FUNC1(0, expect.file_status[GIT_DELTA_DELETED]);
	FUNC1(1, expect.file_status[GIT_DELTA_MODIFIED]);
	FUNC1(0, expect.file_status[GIT_DELTA_ADDED]);
	FUNC1(0, expect.file_status[GIT_DELTA_TYPECHANGE]);
}