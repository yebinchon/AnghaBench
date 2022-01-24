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

/* Variables and functions */
 int /*<<< orphan*/  GIT_BRANCH_ALL ; 
 int /*<<< orphan*/  GIT_BRANCH_LOCAL ; 
 int /*<<< orphan*/  GIT_BRANCH_REMOTE ; 
 int /*<<< orphan*/  GIT_EINVALIDSPEC ; 
 int /*<<< orphan*/  branch ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repo ; 

void FUNC2(void)
{
	FUNC0(GIT_EINVALIDSPEC,
		FUNC1(&branch, repo, "are/you/inv@{id", GIT_BRANCH_LOCAL));
	FUNC0(GIT_EINVALIDSPEC,
		FUNC1(&branch, repo, "yes/i am", GIT_BRANCH_REMOTE));
	FUNC0(GIT_EINVALIDSPEC,
		FUNC1(&branch, repo, "inv al/id", GIT_BRANCH_ALL));
}