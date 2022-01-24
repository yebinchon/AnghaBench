#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  filters; } ;
typedef  TYPE_1__ git_filter_list ;
struct TYPE_11__ {void* payload; int /*<<< orphan*/ * filter; } ;
typedef  TYPE_2__ git_filter_entry ;
struct TYPE_12__ {int /*<<< orphan*/  initialized; } ;
typedef  TYPE_3__ git_filter_def ;
typedef  int /*<<< orphan*/  git_filter ;
struct TYPE_13__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  filters; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  GIT_ERROR_FILTER ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  filter_def_filter_key_check ; 
 int FUNC2 (TYPE_3__*) ; 
 TYPE_7__ filter_registry ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC8 (size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC9(
	git_filter_list *fl, git_filter *filter, void *payload)
{
	int error = 0;
	size_t pos;
	git_filter_def *fdef = NULL;
	git_filter_entry *fe;

	FUNC1(fl && filter);

	if (FUNC5(&filter_registry.lock) < 0) {
		FUNC4(GIT_ERROR_OS, "failed to lock filter registry");
		return -1;
	}

	if (FUNC8(
			&pos, &filter_registry.filters,
			filter_def_filter_key_check, filter) == 0)
		fdef = FUNC7(&filter_registry.filters, pos);

	FUNC6(&filter_registry.lock);

	if (fdef == NULL) {
		FUNC4(GIT_ERROR_FILTER, "cannot use an unregistered filter");
		return -1;
	}

	if (!fdef->initialized && (error = FUNC2(fdef)) < 0)
		return error;

	fe = FUNC3(fl->filters);
	FUNC0(fe);
	fe->filter  = filter;
	fe->payload = payload;

	return 0;
}