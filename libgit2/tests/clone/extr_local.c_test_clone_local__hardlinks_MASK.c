#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_nlink; } ;
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_9__ {int bare; void* local; } ;
typedef  TYPE_1__ git_clone_options ;
struct TYPE_10__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 void* GIT_CLONE_LOCAL ; 
 void* GIT_CLONE_LOCAL_NO_LINKS ; 
 TYPE_1__ GIT_CLONE_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_RMDIR_REMOVE_FILES ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char,int,int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,char*,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct stat*) ; 

void FUNC12(void)
{
	git_repository *repo;
	git_clone_options opts = GIT_CLONE_OPTIONS_INIT;
	git_buf buf = GIT_BUF_INIT;
	struct stat st;

	/*
	 * In this first clone, we just copy over, since the temp dir
	 * will often be in a different filesystem, so we cannot
	 * link. It also allows us to control the number of links
	 */
	opts.bare = true;
	opts.local = GIT_CLONE_LOCAL_NO_LINKS;
	FUNC2(FUNC7(&repo, FUNC1("testrepo.git"), "./clone.git", &opts));
	FUNC9(repo);

	/* This second clone is in the same filesystem, so we can hardlink */

	opts.local = GIT_CLONE_LOCAL;
	FUNC2(FUNC7(&repo, FUNC3("clone.git"), "./clone2.git", &opts));

#ifndef GIT_WIN32
	FUNC4(&buf);
	FUNC2(FUNC6(&buf, '/', 4, FUNC10(repo), "objects", "08", "b041783f40edfe12bb406c9c9a8a040177c125"));

	FUNC2(FUNC11(buf.ptr, &st));
	FUNC0(2, st.st_nlink);
#endif

	FUNC9(repo);
	FUNC4(&buf);

	opts.local = GIT_CLONE_LOCAL_NO_LINKS;
	FUNC2(FUNC7(&repo, FUNC3("clone.git"), "./clone3.git", &opts));

	FUNC4(&buf);
	FUNC2(FUNC6(&buf, '/', 4, FUNC10(repo), "objects", "08", "b041783f40edfe12bb406c9c9a8a040177c125"));

	FUNC2(FUNC11(buf.ptr, &st));
	FUNC0(1, st.st_nlink);

	FUNC9(repo);

	/* this one should automatically use links */
	FUNC2(FUNC7(&repo, "./clone.git", "./clone4.git", NULL));

#ifndef GIT_WIN32
	FUNC4(&buf);
	FUNC2(FUNC6(&buf, '/', 4, FUNC10(repo), "objects", "08", "b041783f40edfe12bb406c9c9a8a040177c125"));

	FUNC2(FUNC11(buf.ptr, &st));
	FUNC0(3, st.st_nlink);
#endif

	FUNC5(&buf);
	FUNC9(repo);

	FUNC2(FUNC8("./clone.git", NULL, GIT_RMDIR_REMOVE_FILES));
	FUNC2(FUNC8("./clone2.git", NULL, GIT_RMDIR_REMOVE_FILES));
	FUNC2(FUNC8("./clone3.git", NULL, GIT_RMDIR_REMOVE_FILES));
	FUNC2(FUNC8("./clone4.git", NULL, GIT_RMDIR_REMOVE_FILES));
}