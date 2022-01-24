#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int count; scalar_t__ status; } ;
typedef  TYPE_1__ status_entry_single ;
typedef  int /*<<< orphan*/  st ;

/* Variables and functions */
 scalar_t__ GIT_STATUS_IGNORED ; 
 scalar_t__ GIT_STATUS_WT_NEW ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  cb_status__single ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

void FUNC10(void)
{
	status_entry_single st;

	g_repo = FUNC5("empty_standard_repo");

	FUNC2(
		"empty_standard_repo/look-ma.txt", "I'm going to be ignored!");

	FUNC8(&st, 0, sizeof(st));
	FUNC3(FUNC7(g_repo, cb_status__single, &st));
	FUNC1(st.count == 1);
	FUNC1(st.status == GIT_STATUS_WT_NEW);

	FUNC3(FUNC6(&st.status, g_repo, "look-ma.txt"));
	FUNC1(st.status == GIT_STATUS_WT_NEW);

	FUNC9("look-ma.txt");

	FUNC4("empty_standard_repo/.gitignore", "*.nomatch\n");

	FUNC8(&st, 0, sizeof(st));
	FUNC3(FUNC7(g_repo, cb_status__single, &st));
	FUNC1(st.count == 2);
	FUNC1(st.status == GIT_STATUS_WT_NEW);

	FUNC3(FUNC6(&st.status, g_repo, "look-ma.txt"));
	FUNC1(st.status == GIT_STATUS_WT_NEW);

	FUNC9("look-ma.txt");

	FUNC4("empty_standard_repo/.gitignore", "*.txt\n");

	FUNC8(&st, 0, sizeof(st));
	FUNC3(FUNC7(g_repo, cb_status__single, &st));
	FUNC1(st.count == 2);
	FUNC1(st.status == GIT_STATUS_IGNORED);

	FUNC3(FUNC6(&st.status, g_repo, "look-ma.txt"));
	FUNC1(st.status == GIT_STATUS_IGNORED);

	FUNC0("look-ma.txt");
}