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
struct TYPE_7__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ git_status_options ;
typedef  int /*<<< orphan*/  git_status_list ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_8__ {int /*<<< orphan*/  oid_calculations; int /*<<< orphan*/  stat_calls; } ;
typedef  TYPE_2__ git_diff_perfdata ;

/* Variables and functions */
 TYPE_2__ GIT_DIFF_PERFDATA_INIT ; 
 TYPE_1__ GIT_STATUS_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_STATUS_OPT_DEFAULTS ; 
 int /*<<< orphan*/  GIT_STATUS_OPT_UPDATE_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(void)
{
	git_repository *repo = FUNC3("status");
	git_status_options opts = GIT_STATUS_OPTIONS_INIT;
	git_status_list *status;
	git_diff_perfdata perf = GIT_DIFF_PERFDATA_INIT;
	git_index *index;

	opts.flags = GIT_STATUS_OPT_DEFAULTS;

	FUNC2(FUNC7(&status, repo, &opts));
	FUNC0(status);
	FUNC2(FUNC6(&perf, status));
	FUNC1(13 + 3, perf.stat_calls);
	FUNC1(5, perf.oid_calculations);

	FUNC5(status);

	/* tick the index so we avoid recalculating racily-clean entries */
	FUNC2(FUNC4(&index, repo));
	FUNC8(index);

	opts.flags |= GIT_STATUS_OPT_UPDATE_INDEX;

	FUNC2(FUNC7(&status, repo, &opts));
	FUNC0(status);
	FUNC2(FUNC6(&perf, status));
	FUNC1(13 + 3, perf.stat_calls);
	FUNC1(5, perf.oid_calculations);

	FUNC5(status);

	opts.flags &= ~GIT_STATUS_OPT_UPDATE_INDEX;

	/* tick again as the index updating from the previous diff might have reset the timestamp */
	FUNC8(index);
	FUNC2(FUNC7(&status, repo, &opts));
	FUNC0(status);
	FUNC2(FUNC6(&perf, status));
	FUNC1(13 + 3, perf.stat_calls);
	FUNC1(0, perf.oid_calculations);

	FUNC5(status);
}