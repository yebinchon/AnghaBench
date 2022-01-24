#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_9__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_vector ;
typedef  int /*<<< orphan*/  git_pool ;
struct TYPE_21__ {int /*<<< orphan*/  path; } ;
struct TYPE_22__ {TYPE_1__ old_file; } ;
typedef  TYPE_2__ const git_diff_delta ;
typedef  TYPE_2__ const* (* git_diff__merge_cb ) (TYPE_2__ const*,TYPE_2__ const*,int /*<<< orphan*/ *) ;
struct TYPE_25__ {int flags; void* new_prefix; void* old_prefix; } ;
struct TYPE_24__ {unsigned int length; } ;
struct TYPE_23__ {TYPE_9__ opts; int /*<<< orphan*/  pool; int /*<<< orphan*/  new_src; int /*<<< orphan*/  old_src; TYPE_7__ deltas; } ;
typedef  TYPE_6__ git_diff ;

/* Variables and functions */
 int GIT_DIFF_IGNORE_CASE ; 
 int GIT_DIFF_REVERSE ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 TYPE_2__ const* FUNC0 (TYPE_7__*,unsigned int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__ const*) ; 
 TYPE_2__ const* FUNC4 (TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_diff_delta__cmp ; 
 scalar_t__ FUNC5 (TYPE_9__*,TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 void* FUNC9 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_7__*,int /*<<< orphan*/ *) ; 

int FUNC15(
	git_diff *onto, const git_diff *from, git_diff__merge_cb cb)
{
	int error = 0;
	git_pool onto_pool;
	git_vector onto_new;
	git_diff_delta *delta;
	bool ignore_case, reversed;
	unsigned int i, j;

	FUNC2(onto && from);

	if (!from->deltas.length)
		return 0;

	ignore_case = ((onto->opts.flags & GIT_DIFF_IGNORE_CASE) != 0);
	reversed    = ((onto->opts.flags & GIT_DIFF_REVERSE) != 0);

	if (ignore_case != ((from->opts.flags & GIT_DIFF_IGNORE_CASE) != 0) ||
		reversed    != ((from->opts.flags & GIT_DIFF_REVERSE) != 0)) {
		FUNC6(GIT_ERROR_INVALID,
			"attempt to merge diffs created with conflicting options");
		return -1;
	}

	if (FUNC12(&onto_new, onto->deltas.length, git_diff_delta__cmp) < 0)
		return -1;

	FUNC8(&onto_pool, 1);

	for (i = 0, j = 0; i < onto->deltas.length || j < from->deltas.length; ) {
		git_diff_delta *o = FUNC0(&onto->deltas, i);
		const git_diff_delta *f = FUNC0(&from->deltas, j);
		int cmp = !f ? -1 : !o ? 1 :
			FUNC1(ignore_case, o->old_file.path, f->old_file.path);

		if (cmp < 0) {
			delta = FUNC4(o, &onto_pool);
			i++;
		} else if (cmp > 0) {
			delta = FUNC4(f, &onto_pool);
			j++;
		} else {
			const git_diff_delta *left = reversed ? f : o;
			const git_diff_delta *right = reversed ? o : f;

			delta = cb(left, right, &onto_pool);
			i++;
			j++;
		}

		/* the ignore rules for the target may not match the source
		 * or the result of a merged delta could be skippable...
		 */
		if (delta && FUNC5(&onto->opts, delta)) {
			FUNC3(delta);
			continue;
		}

		if ((error = !delta ? -1 : FUNC13(&onto_new, delta)) < 0)
			break;
	}

	if (!error) {
		FUNC14(&onto->deltas, &onto_new);
		FUNC10(&onto->pool, &onto_pool);

		if ((onto->opts.flags & GIT_DIFF_REVERSE) != 0)
			onto->old_src = from->old_src;
		else
			onto->new_src = from->new_src;

		/* prefix strings also come from old pool, so recreate those.*/
		onto->opts.old_prefix =
			FUNC9(&onto->pool, onto->opts.old_prefix);
		onto->opts.new_prefix =
			FUNC9(&onto->pool, onto->opts.new_prefix);
	}

	FUNC11(&onto_new);
	FUNC7(&onto_pool);

	return error;
}