#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct pathspec_match_context {int dummy; } ;
struct TYPE_15__ {size_t length; } ;
typedef  TYPE_1__ git_vector ;
struct TYPE_16__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  failures; int /*<<< orphan*/  matches; } ;
typedef  TYPE_2__ git_pathspec_match_list ;
struct TYPE_17__ {int /*<<< orphan*/  prefix; TYPE_1__ pathspec; } ;
typedef  TYPE_3__ git_pathspec ;
typedef  int /*<<< orphan*/  git_iterator ;
struct TYPE_18__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_4__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_bitvec ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int /*<<< orphan*/  GIT_INDEX_STAGE_ANY ; 
 scalar_t__ GIT_ITERATOR_TYPE_WORKDIR ; 
 int GIT_ITEROVER ; 
 int GIT_PATHSPEC_FAILURES_ONLY ; 
 int GIT_PATHSPEC_FIND_FAILURES ; 
 int GIT_PATHSPEC_NO_GLOB ; 
 int GIT_PATHSPEC_NO_MATCH_ERROR ; 
 int /*<<< orphan*/  PATHSPEC_DATATYPE_STRINGS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_4__ const**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (size_t*,TYPE_1__*,struct pathspec_match_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,TYPE_1__*,struct pathspec_match_context*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC18 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct pathspec_match_context*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC21(
	git_pathspec_match_list **out,
	git_iterator *iter,
	uint32_t flags,
	git_pathspec *ps)
{
	int error = 0;
	git_pathspec_match_list *m = NULL;
	const git_index_entry *entry = NULL;
	struct pathspec_match_context ctxt;
	git_vector *patterns = &ps->pathspec;
	bool find_failures = out && (flags & GIT_PATHSPEC_FIND_FAILURES) != 0;
	bool failures_only = !out || (flags & GIT_PATHSPEC_FAILURES_ONLY) != 0;
	size_t pos, used_ct = 0, found_files = 0;
	git_index *index = NULL;
	git_bitvec used_patterns;
	char **file;

	if (FUNC3(&used_patterns, patterns->length) < 0)
		return -1;

	if (out) {
		*out = m = FUNC18(ps, PATHSPEC_DATATYPE_STRINGS);
		FUNC0(m);
	}

	if ((error = FUNC10(iter, ps->prefix, ps->prefix)) < 0)
		goto done;

	if (FUNC11(iter) == GIT_ITERATOR_TYPE_WORKDIR &&
		(error = FUNC14(
			&index, FUNC9(iter))) < 0)
		goto done;

	FUNC19(
		&ctxt, (flags & GIT_PATHSPEC_NO_GLOB) != 0,
		FUNC8(iter));

	while (!(error = FUNC6(&entry, iter))) {
		/* search for match with entry->path */
		int result = FUNC12(
			&pos, patterns, &ctxt, entry->path, NULL);

		/* no matches for this path */
		if (result < 0)
			continue;

		/* if result was a negative pattern match, then don't list file */
		if (!result) {
			used_ct += FUNC16(&used_patterns, pos);
			continue;
		}

		/* check if path is ignored and untracked */
		if (index != NULL &&
			FUNC7(iter) &&
			FUNC5(NULL, index, entry->path, 0, GIT_INDEX_STAGE_ANY) < 0)
			continue;

		/* mark the matched pattern as used */
		used_ct += FUNC16(&used_patterns, pos);
		++found_files;

		/* if find_failures is on, check if any later patterns also match */
		if (find_failures && used_ct < patterns->length)
			used_ct += FUNC17(
				&used_patterns, patterns, &ctxt, pos + 1, entry->path, NULL);

		/* if only looking at failures, exit early or just continue */
		if (failures_only || !out) {
			if (used_ct == patterns->length)
				break;
			continue;
		}

		/* insert matched path into matches array */
		if ((file = (char **)FUNC1(m->matches)) == NULL ||
			(*file = FUNC13(&m->pool, entry->path)) == NULL) {
			error = -1;
			goto done;
		}
	}

	if (error < 0 && error != GIT_ITEROVER)
		goto done;
	error = 0;

	/* insert patterns that had no matches into failures array */
	if (find_failures && used_ct < patterns->length &&
		(error = FUNC15(
			&m->failures, patterns, &used_patterns, &m->pool)) < 0)
		goto done;

	/* if every pattern failed to match, then we have failed */
	if ((flags & GIT_PATHSPEC_NO_MATCH_ERROR) != 0 && !found_files) {
		FUNC4(GIT_ERROR_INVALID, "no matching files were found");
		error = GIT_ENOTFOUND;
	}

done:
	FUNC2(&used_patterns);

	if (error < 0) {
		FUNC20(m);
		if (out) *out = NULL;
	}

	return error;
}