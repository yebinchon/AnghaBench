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
typedef  int /*<<< orphan*/  git_repository ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const**) ; 
 char const* GIT_CHERRYPICK_HEAD_FILE ; 
 char const* GIT_MERGE_MSG_FILE ; 
 int FUNC1 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(git_repository *repo)
{
	const char *state_files[] = { GIT_CHERRYPICK_HEAD_FILE, GIT_MERGE_MSG_FILE };

	return FUNC1(repo, state_files, FUNC0(state_files));
}