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
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,char const*) ; 

void FUNC6(void)
{
	git_commit *commit;
	const char *buffer =
"tree 1810dff58d8a660512d4832e740f692884338ccd\n\
parent e90810b8df3e80c413d903f631643c716887138d\n\
author Vicent Marti <tanoku@gmail.com> 1273848544 +0200\n\
committer Vicent Marti <tanoku@gmail.com> 1273848544 +0200\n\
\n\
\n\
\n\
This commit has a few LF at the start of the commit message";
	const char *message =
"This commit has a few LF at the start of the commit message";
	const char *raw_message =
"\n\
\n\
This commit has a few LF at the start of the commit message";
	FUNC1(FUNC5(&commit, buffer));
	FUNC0(message, FUNC3(commit));
	FUNC0(raw_message, FUNC4(commit));
	FUNC2(commit);
}