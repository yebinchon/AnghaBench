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
 int /*<<< orphan*/  GIT_STASH_KEEP_INDEX ; 
 int /*<<< orphan*/  GIT_STATUS_CURRENT ; 
 int /*<<< orphan*/  GIT_STATUS_IGNORED ; 
 int /*<<< orphan*/  GIT_STATUS_INDEX_MODIFIED ; 
 int /*<<< orphan*/  GIT_STATUS_WT_NEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  signature ; 
 int /*<<< orphan*/  stash_tip_oid ; 

void FUNC3(void)
{
	FUNC1(FUNC2(&stash_tip_oid, repo, signature, NULL, GIT_STASH_KEEP_INDEX));

	FUNC0(repo, "what", GIT_STATUS_INDEX_MODIFIED);
	FUNC0(repo, "how", GIT_STATUS_INDEX_MODIFIED);
	FUNC0(repo, "who", GIT_STATUS_CURRENT);
	FUNC0(repo, "when", GIT_STATUS_WT_NEW);
	FUNC0(repo, "just.ignore", GIT_STATUS_IGNORED);
}