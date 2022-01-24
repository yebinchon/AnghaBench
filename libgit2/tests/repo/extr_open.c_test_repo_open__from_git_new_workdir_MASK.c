#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_6__ {int /*<<< orphan*/  size; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,char const*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (char*,int) ; 
 int /*<<< orphan*/  FUNC19 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (char const*,char) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC23(void)
{
#ifndef GIT_WIN32
	/* The git-new-workdir script that ships with git sets up a bunch of
	 * symlinks to create a second workdir that shares the object db with
	 * another checkout.  Libgit2 can open a repo that has been configured
	 * this way.
	 */

	git_repository *repo2;
	git_buf link_tgt = GIT_BUF_INIT, link = GIT_BUF_INIT, body = GIT_BUF_INIT;
	const char **scan;
	int link_fd;
	static const char *links[] = {
		"config", "refs", "logs/refs", "objects", "info", "hooks",
		"packed-refs", "remotes", "rr-cache", "svn", NULL
	};
	static const char *copies[] = {
		"HEAD", NULL
	};

	FUNC3("empty_standard_repo");

	FUNC2(FUNC18("alternate", 0777));
	FUNC2(FUNC18("alternate/.git", 0777));

	for (scan = links; *scan != NULL; scan++) {
		FUNC8(&link_tgt, "empty_standard_repo/.git", *scan);
		if (FUNC12(link_tgt.ptr)) {
			FUNC8(&link_tgt, "../../empty_standard_repo/.git", *scan);
			FUNC8(&link, "alternate/.git", *scan);
			if (FUNC20(*scan, '/'))
				FUNC10(link.ptr, 0777);
			FUNC1(FUNC22(link_tgt.ptr, link.ptr) == 0, FUNC21(errno));
		}
	}
	for (scan = copies; *scan != NULL; scan++) {
		FUNC8(&link_tgt, "empty_standard_repo/.git", *scan);
		if (FUNC12(link_tgt.ptr)) {
			FUNC8(&link, "alternate/.git", *scan);
			FUNC2(FUNC11(&body, link_tgt.ptr));

			FUNC0((link_fd = FUNC9(link.ptr, 0777, 0666)) >= 0);
			FUNC4(FUNC19(link_fd, body.ptr, body.size));
			FUNC17(link_fd);
		}
	}

	FUNC7(&link_tgt);
	FUNC7(&link);
	FUNC7(&body);


	FUNC2(FUNC14(&repo2, "alternate"));

	FUNC0(FUNC15(repo2) != NULL);
	FUNC1(FUNC6(FUNC15(repo2), "alternate/.git/") == 0, FUNC15(repo2));

	FUNC0(FUNC16(repo2) != NULL);
	FUNC1(FUNC6(FUNC16(repo2), "alternate/") == 0, FUNC16(repo2));

	FUNC13(repo2);
#else
	cl_skip();
#endif
}