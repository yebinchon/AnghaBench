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
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ git_merge_options ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_EMERGECONFLICT ; 
 int /*<<< orphan*/  GIT_MERGE_FAIL_ON_CONFLICT ; 
 TYPE_1__ GIT_MERGE_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  repo ; 

void FUNC3(void)
{
	git_index *index;
	git_merge_options opts = GIT_MERGE_OPTIONS_INIT;

	opts.flags |= GIT_MERGE_FAIL_ON_CONFLICT;

	FUNC0(GIT_EMERGECONFLICT,
		FUNC2(&index, repo, "df_side1", "df_side2", &opts));

	FUNC0(GIT_EMERGECONFLICT,
		FUNC1(&index, repo, "master", "unrelated", &opts));
	FUNC0(GIT_EMERGECONFLICT,
		FUNC1(&index, repo, "master", "branch", &opts));
}