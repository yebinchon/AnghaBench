#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int priority; size_t nattrs; size_t nmatches; struct TYPE_12__* attrdata; struct TYPE_12__* filter_name; TYPE_2__* filter; } ;
typedef  TYPE_1__ git_filter_def ;
struct TYPE_13__ {int /*<<< orphan*/  attributes; } ;
typedef  TYPE_2__ git_filter ;
typedef  int /*<<< orphan*/  git_buf ;
struct TYPE_14__ {int /*<<< orphan*/  filters; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (size_t*,size_t,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,size_t*,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_9__ filter_registry ; 
 TYPE_1__* FUNC5 (int,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 (char const*) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(
	const char *name, git_filter *filter, int priority)
{
	git_filter_def *fdef;
	size_t nattr = 0, nmatch = 0, alloc_len;
	git_buf attrs = GIT_BUF_INIT;

	if (FUNC3(&attrs, &nattr, &nmatch, filter->attributes) < 0)
		return -1;

	FUNC2(&alloc_len, nattr, 2);
	FUNC2(&alloc_len, alloc_len, sizeof(char *));
	FUNC1(&alloc_len, alloc_len, sizeof(git_filter_def));

	fdef = FUNC5(1, alloc_len);
	FUNC0(fdef);

	fdef->filter_name = FUNC7(name);
	FUNC0(fdef->filter_name);

	fdef->filter      = filter;
	fdef->priority    = priority;
	fdef->nattrs      = nattr;
	fdef->nmatches    = nmatch;
	fdef->attrdata    = FUNC8(&attrs);

	FUNC4(fdef);

	if (FUNC9(&filter_registry.filters, fdef) < 0) {
		FUNC6(fdef->filter_name);
		FUNC6(fdef->attrdata);
		FUNC6(fdef);
		return -1;
	}

	FUNC10(&filter_registry.filters);
	return 0;
}