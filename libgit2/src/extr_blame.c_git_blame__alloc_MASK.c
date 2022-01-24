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
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_7__ {int flags; } ;
typedef  TYPE_1__ git_blame_options ;
struct TYPE_8__ {int /*<<< orphan*/  mailmap; int /*<<< orphan*/  paths; int /*<<< orphan*/ * path; int /*<<< orphan*/  hunks; TYPE_1__ options; int /*<<< orphan*/ * repository; } ;
typedef  TYPE_2__ git_blame ;

/* Variables and functions */
 int GIT_BLAME_USE_MAILMAP ; 
 TYPE_2__* FUNC0 (int,int) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hunk_cmp ; 
 int /*<<< orphan*/  paths_cmp ; 

git_blame* FUNC6(
	git_repository *repo,
	git_blame_options opts,
	const char *path)
{
	git_blame *gbr = FUNC0(1, sizeof(git_blame));
	if (!gbr)
		return NULL;

	gbr->repository = repo;
	gbr->options = opts;

	if (FUNC4(&gbr->hunks, 8, hunk_cmp) < 0 ||
		FUNC4(&gbr->paths, 8, paths_cmp) < 0 ||
		(gbr->path = FUNC1(path)) == NULL ||
		FUNC5(&gbr->paths, FUNC1(path)) < 0)
	{
		FUNC2(gbr);
		return NULL;
	}

	if (opts.flags & GIT_BLAME_USE_MAILMAP &&
	    FUNC3(&gbr->mailmap, repo) < 0) {
		FUNC2(gbr);
		return NULL;
	}

	return gbr;
}