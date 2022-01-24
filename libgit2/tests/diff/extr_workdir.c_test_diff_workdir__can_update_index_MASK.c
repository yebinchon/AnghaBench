#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_7__ {int /*<<< orphan*/  oid_calculations; int /*<<< orphan*/  stat_calls; } ;
typedef  TYPE_1__ git_diff_perfdata ;
struct TYPE_8__ {int flags; } ;
typedef  TYPE_2__ git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int GIT_DIFF_INCLUDE_IGNORED ; 
 int GIT_DIFF_INCLUDE_UNTRACKED ; 
 TYPE_2__ GIT_DIFF_OPTIONS_INIT ; 
 TYPE_1__ GIT_DIFF_PERFDATA_INIT ; 
 int GIT_DIFF_UPDATE_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  touch_file ; 

void FUNC11(void)
{
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	git_diff *diff = NULL;
	git_diff_perfdata perf = GIT_DIFF_PERFDATA_INIT;
	git_index *index;

	g_repo = FUNC3("status");

	/* touch all the files so stat times are different */
	{
		git_buf path = GIT_BUF_INIT;
		FUNC2(FUNC5(&path, "status"));
		FUNC2(FUNC8(&path, 0, touch_file, NULL));
		FUNC4(&path);
	}

	opts.flags |= GIT_DIFF_INCLUDE_IGNORED | GIT_DIFF_INCLUDE_UNTRACKED;

	FUNC0(&diff, &opts);

	FUNC2(FUNC7(&perf, diff));
	FUNC1(13 + 3, perf.stat_calls);
	FUNC1(5, perf.oid_calculations);

	FUNC6(diff);

	/* now allow diff to update stat cache */
	opts.flags |= GIT_DIFF_UPDATE_INDEX;

	/* advance a tick for the index so we don't re-calculate racily-clean entries */
	FUNC2(FUNC9(&index, g_repo));
	FUNC10(index);

	FUNC0(&diff, &opts);

	FUNC2(FUNC7(&perf, diff));
	FUNC1(13 + 3, perf.stat_calls);
	FUNC1(5, perf.oid_calculations);

	FUNC6(diff);

	/* now if we do it again, we should see fewer OID calculations */

	/* tick again as the index updating from the previous diff might have reset the timestamp */
	FUNC10(index);
	FUNC0(&diff, &opts);

	FUNC2(FUNC7(&perf, diff));
	FUNC1(13 + 3, perf.stat_calls);
	FUNC1(0, perf.oid_calculations);

	FUNC6(diff);
}