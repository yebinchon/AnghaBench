#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  git_reflog_entry ;
typedef  int /*<<< orphan*/  git_reflog ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_REFLOG_DIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_master_tip ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 char* FUNC16 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ ,char*) ; 

void FUNC18(void)
{
	git_reflog *reflog;
	const char *refname = "refs/heads/newline";
	const char *refmessage =
		"Reflog*message with a newline and enough content after it to pass the GIT_REFLOG_SIZE_MIN check inside reflog_parse.";
	const git_reflog_entry *entry;
	git_reference *ref;
	git_oid id;
	git_buf logpath = GIT_BUF_INIT, logcontents = GIT_BUF_INIT;
	char *star;

	/* Create a new branch. */
	FUNC2(FUNC8(&id, current_master_tip));
	FUNC2(FUNC9(&ref, g_repo, refname, &id, 1, refmessage));

	/*
	 * Corrupt the branch reflog by introducing a newline inside the reflog message.
	 * We do this by replacing '*' with '\n'
	 */
	FUNC2(FUNC6(&logpath, '/', 3, FUNC15(g_repo), GIT_REFLOG_DIR, refname));
	FUNC2(FUNC7(&logcontents, FUNC4(&logpath)));
	FUNC0((star = FUNC16(FUNC4(&logcontents), '*')) != NULL);
	*star = '\n';
	FUNC3(FUNC4(&logpath), FUNC4(&logcontents));

	/*
	 * Confirm that the file was rewritten successfully
	 * and now contains a '\n' in the expected location
	 */
	FUNC2(FUNC7(&logcontents, FUNC4(&logpath)));
	FUNC0(FUNC17(FUNC4(&logcontents), "Reflog\nmessage") != NULL);

	FUNC2(FUNC14(&reflog, g_repo, refname));
	FUNC0(entry = FUNC11(reflog, 0));
	FUNC1(FUNC12(entry), "Reflog");

	FUNC10(ref);
	FUNC13(reflog);
	FUNC5(&logpath);
	FUNC5(&logcontents);
}