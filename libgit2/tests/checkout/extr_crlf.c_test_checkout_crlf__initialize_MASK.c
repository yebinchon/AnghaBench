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
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 scalar_t__ GIT_EOL_CRLF ; 
 scalar_t__ GIT_EOL_NATIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* systype ; 
 int /*<<< orphan*/  unlink_file ; 

void FUNC5(void)
{
	git_buf reponame = GIT_BUF_INIT;

	g_repo = FUNC1("crlf");

	/*
	 * remove the contents of the working directory so that we can
	 * check out over it.
	 */
	FUNC0(FUNC3(&reponame, "crlf"));
	FUNC0(FUNC4(&reponame, 0, unlink_file, NULL));

	if (GIT_EOL_NATIVE == GIT_EOL_CRLF)
		systype = "windows";
	else
		systype = "posix";

	FUNC2(&reponame);
}