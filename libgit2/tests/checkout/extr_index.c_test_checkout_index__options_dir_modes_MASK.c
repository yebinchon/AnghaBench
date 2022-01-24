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
struct stat {int st_mode; } ;
typedef  int mode_t ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_commit ;
struct TYPE_4__ {int checkout_strategy; int dir_mode; } ;
typedef  TYPE_1__ git_checkout_options ;

/* Variables and functions */
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int GIT_CHECKOUT_RECREATE_MISSING ; 
 int GIT_CHECKOUT_SAFE ; 
 int GIT_FILEMODE_BLOB_EXECUTABLE ; 
 int GIT_FILEMODE_TREE ; 
 int S_IFMT ; 
 int /*<<< orphan*/  FUNC0 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct stat*) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(void)
{
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
	struct stat st;
	git_oid oid;
	git_commit *commit;
	mode_t um;

	if (!FUNC2())
		return;

	FUNC1(FUNC6(&oid, g_repo, "refs/heads/dir"));
	FUNC1(FUNC5(&commit, g_repo, &oid));

	FUNC9((git_object *)commit);

	opts.checkout_strategy = GIT_CHECKOUT_SAFE | GIT_CHECKOUT_RECREATE_MISSING;
	opts.dir_mode = 0701;

	FUNC1(FUNC3(g_repo, NULL, &opts));

	/* umask will influence actual directory creation mode */
	(void)FUNC8(um = FUNC8(022));

	FUNC1(FUNC7("./testrepo/a", &st));
	/* Haiku & Hurd use other mode bits, so we must mask them out */
	FUNC0(st.st_mode & (S_IFMT | 07777), (GIT_FILEMODE_TREE | 0701) & ~um, "%07o");

	/* File-mode test, since we're on the 'dir' branch */
	FUNC1(FUNC7("./testrepo/a/b.txt", &st));
	FUNC0(st.st_mode & (S_IFMT | 07777), GIT_FILEMODE_BLOB_EXECUTABLE & ~um, "%07o");

	FUNC4(commit);
}