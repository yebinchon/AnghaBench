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
struct TYPE_4__ {scalar_t__ status; int /*<<< orphan*/  count; } ;
typedef  TYPE_1__ status_entry_single ;
typedef  int /*<<< orphan*/  st ;

/* Variables and functions */
 scalar_t__ GIT_STATUS_IGNORED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  cb_status__single ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC11(void)
{
	status_entry_single st;

	g_repo = FUNC6("empty_standard_repo");

	FUNC3(
		"empty_standard_repo/ignore_me", "I'm going to be ignored!");

	FUNC5("empty_standard_repo/.gitignore", "ignore_me\n");

	FUNC10(&st, 0, sizeof(st));
	FUNC4(FUNC9(g_repo, cb_status__single, &st));
	FUNC2(2, st.count);
	FUNC1(st.status == GIT_STATUS_IGNORED);

	FUNC4(FUNC8(&st.status, g_repo, "ignore_me"));
	FUNC1(st.status == GIT_STATUS_IGNORED);

	FUNC0("ignore_me");

	/* I've changed libgit2 so that the behavior here now differs from
	 * core git but seems to make more sense.  In core git, the following
	 * items are skipped completed, even if --ignored is passed to status.
	 * It you mirror these steps and run "git status -uall --ignored" then
	 * you will not see "test/ignore_me/" in the results.
	 *
	 * However, we had a couple reports of this as a bug, plus there is a
	 * similar circumstance where we were differing for core git when you
	 * used a rooted path for an ignore, so I changed this behavior.
	 */
	FUNC4(FUNC7(
		"empty_standard_repo/test/ignore_me", 0775));
	FUNC3(
		"empty_standard_repo/test/ignore_me/file", "I'm going to be ignored!");
	FUNC3(
		"empty_standard_repo/test/ignore_me/file2", "Me, too!");

	FUNC10(&st, 0, sizeof(st));
	FUNC4(FUNC9(g_repo, cb_status__single, &st));
	FUNC2(3, st.count);

	FUNC4(FUNC8(&st.status, g_repo, "test/ignore_me/file"));
	FUNC1(st.status == GIT_STATUS_IGNORED);

	FUNC0("test/ignore_me/file");
}