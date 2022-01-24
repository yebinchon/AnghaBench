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
 int /*<<< orphan*/  GIT_STASH_INCLUDE_UNTRACKED ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  signature ; 
 int /*<<< orphan*/  stash_tip_oid ; 

void FUNC4(void)
{
	FUNC2(FUNC3(&stash_tip_oid, repo, signature, NULL, GIT_STASH_INCLUDE_UNTRACKED));

	FUNC1("refs/stash^3", "untracked files on master: ");

	FUNC0("refs/stash^3:what", NULL);
	FUNC0("refs/stash^3:how", NULL);
	FUNC0("refs/stash^3:who", NULL);
	FUNC0("refs/stash^3:when", "b6ed15e81e2593d7bb6265eb4a991d29dc3e628b");
	FUNC0("refs/stash^3:just.ignore", NULL);
}