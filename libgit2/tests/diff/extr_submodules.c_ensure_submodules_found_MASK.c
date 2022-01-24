#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_8__ {char** strings; size_t count; } ;
struct TYPE_10__ {TYPE_1__ pathspec; } ;
typedef  TYPE_3__ git_diff_options ;
struct TYPE_9__ {int /*<<< orphan*/  path; } ;
struct TYPE_11__ {TYPE_2__ new_file; } ;
typedef  TYPE_4__ git_diff_delta ;
typedef  int /*<<< orphan*/  git_diff ;

/* Variables and functions */
 TYPE_3__ GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(
	git_repository *repo,
	const char **paths,
	size_t cnt)
{
	git_diff *diff = NULL;
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	const git_diff_delta *delta;
	size_t i, pathlen;

	opts.pathspec.strings = (char **)paths;
	opts.pathspec.count = cnt;

	FUNC4(&diff, repo, NULL, &opts);

	FUNC0(cnt, FUNC5(diff));

	for (i = 0; i < cnt; i++) {
		delta = FUNC3(diff, i);

		/* ensure that the given path is returned w/o trailing slashes. */
		pathlen = FUNC6(opts.pathspec.strings[i]);

		while (pathlen && opts.pathspec.strings[i][pathlen - 1] == '/')
			pathlen--;

		FUNC1(opts.pathspec.strings[i], delta->new_file.path, pathlen);
	}

	FUNC2(diff);
}