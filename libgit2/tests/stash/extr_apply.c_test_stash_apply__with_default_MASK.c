#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_STATUS_CURRENT ; 
 int /*<<< orphan*/  GIT_STATUS_INDEX_NEW ; 
 int /*<<< orphan*/  GIT_STATUS_WT_MODIFIED ; 
 int /*<<< orphan*/  GIT_STATUS_WT_NEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  repo_index ; 

void FUNC8(void)
{
	git_buf where = GIT_BUF_INIT;

	FUNC3(FUNC7(repo, 0, NULL));

	FUNC1(FUNC6(repo_index), 0);
	FUNC0(repo, "what", GIT_STATUS_WT_MODIFIED);
	FUNC0(repo, "how", GIT_STATUS_CURRENT);
	FUNC0(repo, "who", GIT_STATUS_WT_MODIFIED);
	FUNC0(repo, "when", GIT_STATUS_WT_NEW);
	FUNC0(repo, "why", GIT_STATUS_INDEX_NEW);
	FUNC0(repo, "where", GIT_STATUS_INDEX_NEW);

	FUNC3(FUNC5(&where, "stash/where"));
	FUNC2("....\n", where.ptr);

	FUNC4(&where);
}