#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_filter ;
struct TYPE_2__ {int /*<<< orphan*/  filters; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_FILTER_CRLF ; 
 int /*<<< orphan*/  GIT_FILTER_CRLF_PRIORITY ; 
 int /*<<< orphan*/  GIT_FILTER_IDENT ; 
 int /*<<< orphan*/  GIT_FILTER_IDENT_PRIORITY ; 
 int /*<<< orphan*/  filter_def_priority_cmp ; 
 TYPE_1__ filter_registry ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_filter_global_shutdown ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

int FUNC7(void)
{
	git_filter *crlf = NULL, *ident = NULL;
	int error = 0;

	if (FUNC5(&filter_registry.lock) < 0)
		return -1;

	if ((error = FUNC6(&filter_registry.filters, 2,
		filter_def_priority_cmp)) < 0)
		goto done;

	if ((crlf = FUNC2()) == NULL ||
		FUNC0(
			GIT_FILTER_CRLF, crlf, GIT_FILTER_CRLF_PRIORITY) < 0 ||
		(ident = FUNC4()) == NULL ||
		FUNC0(
			GIT_FILTER_IDENT, ident, GIT_FILTER_IDENT_PRIORITY) < 0)
		error = -1;

	FUNC1(git_filter_global_shutdown);

done:
	if (error) {
		FUNC3(crlf);
		FUNC3(ident);
	}

	return error;
}