#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ git_hashsig_option_t ;
typedef  int /*<<< orphan*/  git_diff_similarity_metric ;
struct TYPE_11__ {int flags; scalar_t__ rename_limit; TYPE_8__* metric; void* break_rewrite_threshold; void* copy_threshold; void* rename_from_rewrite_threshold; void* rename_threshold; } ;
typedef  TYPE_1__ git_diff_find_options ;
struct TYPE_12__ {int /*<<< orphan*/ * repo; } ;
typedef  TYPE_2__ git_diff ;
typedef  int /*<<< orphan*/  git_config ;
struct TYPE_13__ {void* payload; int /*<<< orphan*/  similarity; int /*<<< orphan*/  free_signature; int /*<<< orphan*/  buffer_signature; int /*<<< orphan*/  file_signature; } ;

/* Variables and functions */
 void* DEFAULT_BREAK_REWRITE_THRESHOLD ; 
 scalar_t__ DEFAULT_RENAME_LIMIT ; 
 void* DEFAULT_THRESHOLD ; 
 int GIT_DIFF_BREAK_REWRITES ; 
 int GIT_DIFF_FIND_ALL ; 
 int GIT_DIFF_FIND_BY_CONFIG ; 
 int GIT_DIFF_FIND_COPIES ; 
 int GIT_DIFF_FIND_COPIES_FROM_UNMODIFIED ; 
 int GIT_DIFF_FIND_DONT_IGNORE_WHITESPACE ; 
 int GIT_DIFF_FIND_EXACT_MATCH_ONLY ; 
 int GIT_DIFF_FIND_IGNORE_WHITESPACE ; 
 int /*<<< orphan*/  GIT_DIFF_FIND_OPTIONS_VERSION ; 
 int GIT_DIFF_FIND_RENAMES ; 
 int GIT_DIFF_FIND_RENAMES_FROM_REWRITES ; 
 int GIT_DIFF_FIND_REWRITES ; 
 int /*<<< orphan*/  FUNC0 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ GIT_HASHSIG_ALLOW_SMALL_FILES ; 
 scalar_t__ GIT_HASHSIG_IGNORE_WHITESPACE ; 
 scalar_t__ GIT_HASHSIG_NORMAL ; 
 scalar_t__ GIT_HASHSIG_SMART_WHITESPACE ; 
 scalar_t__ FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_8__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int*,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 char* FUNC7 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  git_diff_find_similar__calc_similarity ; 
 int /*<<< orphan*/  git_diff_find_similar__hashsig_for_buf ; 
 int /*<<< orphan*/  git_diff_find_similar__hashsig_for_file ; 
 int /*<<< orphan*/  git_diff_find_similar__hashsig_free ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 

__attribute__((used)) static int FUNC11(
	git_diff *diff,
	git_diff_find_options *opts,
	const git_diff_find_options *given)
{
	git_config *cfg = NULL;
	git_hashsig_option_t hashsig_opts;

	FUNC1(given, GIT_DIFF_FIND_OPTIONS_VERSION, "git_diff_find_options");

	if (diff->repo != NULL &&
		FUNC8(&cfg, diff->repo) < 0)
		return -1;

	if (given)
		FUNC9(opts, given, sizeof(*opts));

	if (!given ||
		 (given->flags & GIT_DIFF_FIND_ALL) == GIT_DIFF_FIND_BY_CONFIG)
	{
		if (cfg) {
			char *rule =
				FUNC7(cfg, "diff.renames", "true");
			int boolval;

			if (!FUNC5(&boolval, rule) && !boolval)
				/* don't set FIND_RENAMES if bool value is false */;
			else if (!FUNC10(rule, "copies") || !FUNC10(rule, "copy"))
				opts->flags |= GIT_DIFF_FIND_RENAMES | GIT_DIFF_FIND_COPIES;
			else
				opts->flags |= GIT_DIFF_FIND_RENAMES;

			FUNC3(rule);
		} else {
			/* set default flag */
			opts->flags |= GIT_DIFF_FIND_RENAMES;
		}
	}

	/* some flags imply others */

	if (opts->flags & GIT_DIFF_FIND_EXACT_MATCH_ONLY) {
		/* if we are only looking for exact matches, then don't turn
		 * MODIFIED items into ADD/DELETE pairs because it's too picky
		 */
		opts->flags &= ~(GIT_DIFF_FIND_REWRITES | GIT_DIFF_BREAK_REWRITES);

		/* similarly, don't look for self-rewrites to split */
		opts->flags &= ~GIT_DIFF_FIND_RENAMES_FROM_REWRITES;
	}

	if (opts->flags & GIT_DIFF_FIND_RENAMES_FROM_REWRITES)
		opts->flags |= GIT_DIFF_FIND_RENAMES;

	if (opts->flags & GIT_DIFF_FIND_COPIES_FROM_UNMODIFIED)
		opts->flags |= GIT_DIFF_FIND_COPIES;

	if (opts->flags & GIT_DIFF_BREAK_REWRITES)
		opts->flags |= GIT_DIFF_FIND_REWRITES;

#define USE_DEFAULT(X) ((X) == 0 || (X) > 100)

	if (USE_DEFAULT(opts->rename_threshold))
		opts->rename_threshold = DEFAULT_THRESHOLD;

	if (USE_DEFAULT(opts->rename_from_rewrite_threshold))
		opts->rename_from_rewrite_threshold = DEFAULT_THRESHOLD;

	if (USE_DEFAULT(opts->copy_threshold))
		opts->copy_threshold = DEFAULT_THRESHOLD;

	if (USE_DEFAULT(opts->break_rewrite_threshold))
		opts->break_rewrite_threshold = DEFAULT_BREAK_REWRITE_THRESHOLD;

#undef USE_DEFAULT

	if (!opts->rename_limit) {
		if (cfg) {
			opts->rename_limit = FUNC6(
				cfg, "diff.renamelimit", DEFAULT_RENAME_LIMIT);
		}

		if (opts->rename_limit <= 0)
			opts->rename_limit = DEFAULT_RENAME_LIMIT;
	}

	/* assign the internal metric with whitespace flag as payload */
	if (!opts->metric) {
		opts->metric = FUNC4(sizeof(git_diff_similarity_metric));
		FUNC0(opts->metric);

		opts->metric->file_signature = git_diff_find_similar__hashsig_for_file;
		opts->metric->buffer_signature = git_diff_find_similar__hashsig_for_buf;
		opts->metric->free_signature = git_diff_find_similar__hashsig_free;
		opts->metric->similarity = git_diff_find_similar__calc_similarity;

		if (opts->flags & GIT_DIFF_FIND_IGNORE_WHITESPACE)
			hashsig_opts = GIT_HASHSIG_IGNORE_WHITESPACE;
		else if (opts->flags & GIT_DIFF_FIND_DONT_IGNORE_WHITESPACE)
			hashsig_opts = GIT_HASHSIG_NORMAL;
		else
			hashsig_opts = GIT_HASHSIG_SMART_WHITESPACE;
		hashsig_opts |= GIT_HASHSIG_ALLOW_SMALL_FILES;
		opts->metric->payload = (void *)hashsig_opts;
	}

	return 0;
}