#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_refspec ;
typedef  int /*<<< orphan*/  git_config ;
struct TYPE_6__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;
struct TYPE_7__ {scalar_t__ klass; } ;

/* Variables and functions */
 char* CONFIG_FETCH_FMT ; 
 char* CONFIG_PUSH_FMT ; 
 TYPE_1__ GIT_BUF_INIT ; 
 int GIT_EINVALIDSPEC ; 
 scalar_t__ GIT_ERROR_NOMEMORY ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,char const*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 TYPE_2__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,char const*,int) ; 
 int FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(git_repository *repo, const char *name, const char *refspec, bool fetch)
{
	git_config *cfg;
	git_buf var = GIT_BUF_INIT;
	git_refspec spec;
	const char *fmt;
	int error;

	if ((error = FUNC7(&cfg, repo)) < 0)
	    return error;

	fmt = fetch ? CONFIG_FETCH_FMT : CONFIG_PUSH_FMT;

	if ((error = FUNC0(name)) < 0)
		return error;

	if ((error = FUNC6(&spec, refspec, fetch)) < 0) {
		if (FUNC4()->klass != GIT_ERROR_NOMEMORY)
			error = GIT_EINVALIDSPEC;

		return error;
	}

	FUNC5(&spec);

	if ((error = FUNC2(&var, fmt, name)) < 0)
		return error;

	/*
	 * "$^" is a unmatcheable regexp: it will not match anything at all, so
	 * all values will be considered new and we will not replace any
	 * present value.
	 */
	if ((error = FUNC3(cfg, var.ptr, "$^", refspec)) < 0) {
		goto cleanup;
	}

cleanup:
	FUNC1(&var);
	return 0;
}