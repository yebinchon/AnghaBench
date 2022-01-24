#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_4__ {char const* start; char const* end; scalar_t__ flags; } ;
typedef  TYPE_1__ git_iterator_options ;
typedef  int /*<<< orphan*/  git_iterator ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int GIT_INDEX_CAPABILITY_IGNORE_CASE ; 
 TYPE_1__ GIT_ITERATOR_OPTIONS_INIT ; 
 int GIT_ITEROVER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(
	git_repository *repo,
	const char *start,
	const char *end,
	bool ignore_case,
	int expected_count)
{
	git_index *index;
	git_iterator *i;
	git_iterator_options i_opts = GIT_ITERATOR_OPTIONS_INIT;
	int error, count, caps;
	bool is_ignoring_case;

	FUNC2(FUNC10(&index, repo));

	caps = FUNC3(index);
	is_ignoring_case = ((caps & GIT_INDEX_CAPABILITY_IGNORE_CASE) != 0);

	if (ignore_case != is_ignoring_case)
		FUNC2(FUNC5(index, caps ^ GIT_INDEX_CAPABILITY_IGNORE_CASE));

	i_opts.flags = 0;
	i_opts.start = start;
	i_opts.end = end;

	FUNC2(FUNC7(&i, repo, index, &i_opts));

	FUNC0(FUNC9(i) == ignore_case);

	for (count = 0; !(error = FUNC6(NULL, i)); ++count)
		/* count em up */;

	FUNC1(GIT_ITEROVER, error);
	FUNC1(expected_count, count);

	FUNC8(i);
	FUNC4(index);
}