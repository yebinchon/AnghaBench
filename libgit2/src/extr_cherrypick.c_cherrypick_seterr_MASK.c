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
 int /*<<< orphan*/  GIT_ERROR_CHERRYPICK ; 
 int GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(git_commit *commit, const char *fmt)
{
	char commit_oidstr[GIT_OID_HEXSZ + 1];

	FUNC1(GIT_ERROR_CHERRYPICK, fmt,
		FUNC2(commit_oidstr, GIT_OID_HEXSZ + 1, FUNC0(commit)));

	return -1;
}