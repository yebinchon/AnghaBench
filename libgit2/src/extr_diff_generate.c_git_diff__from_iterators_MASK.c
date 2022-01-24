#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_37__   TYPE_7__ ;
typedef  struct TYPE_36__   TYPE_6__ ;
typedef  struct TYPE_35__   TYPE_5__ ;
typedef  struct TYPE_34__   TYPE_4__ ;
typedef  struct TYPE_33__   TYPE_3__ ;
typedef  struct TYPE_32__   TYPE_2__ ;
typedef  struct TYPE_31__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_32__ {scalar_t__ stat_calls; } ;
typedef  TYPE_2__ git_iterator ;
struct TYPE_33__ {int (* progress_cb ) (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  payload; } ;
typedef  TYPE_3__ git_diff_options ;
struct TYPE_31__ {int /*<<< orphan*/  stat_calls; } ;
struct TYPE_35__ {int (* entrycomp ) (TYPE_7__*,TYPE_7__*) ;TYPE_1__ perf; } ;
struct TYPE_34__ {TYPE_5__ base; } ;
typedef  TYPE_4__ git_diff_generated ;
typedef  TYPE_5__ git_diff ;
struct TYPE_36__ {TYPE_7__* nitem; TYPE_7__* oitem; TYPE_2__* new_iter; TYPE_2__* old_iter; int /*<<< orphan*/ * repo; } ;
typedef  TYPE_6__ diff_in_progress ;
struct TYPE_37__ {int /*<<< orphan*/ * path; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GIT_DIFF_IGNORE_CASE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*) ; 
 int FUNC3 (TYPE_4__*,TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int FUNC6 (TYPE_4__*,TYPE_6__*) ; 
 int FUNC7 (TYPE_4__*,TYPE_6__*) ; 
 int FUNC8 (TYPE_4__*,TYPE_6__*) ; 
 int FUNC9 (TYPE_7__**,TYPE_2__*) ; 
 int FUNC10 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_7__*,TYPE_7__*) ; 

int FUNC12(
	git_diff **out,
	git_repository *repo,
	git_iterator *old_iter,
	git_iterator *new_iter,
	const git_diff_options *opts)
{
	git_diff_generated *diff;
	diff_in_progress info;
	int error = 0;

	*out = NULL;

	diff = FUNC2(repo, old_iter, new_iter);
	FUNC1(diff);

	info.repo = repo;
	info.old_iter = old_iter;
	info.new_iter = new_iter;

	/* make iterators have matching icase behavior */
	if (FUNC0(diff, GIT_DIFF_IGNORE_CASE)) {
		FUNC5(old_iter, true);
		FUNC5(new_iter, true);
	}

	/* finish initialization */
	if ((error = FUNC3(diff, opts)) < 0)
		goto cleanup;

	if ((error = FUNC9(&info.oitem, old_iter)) < 0 ||
		(error = FUNC9(&info.nitem, new_iter)) < 0)
		goto cleanup;

	/* run iterators building diffs */
	while (!error && (info.oitem || info.nitem)) {
		int cmp;

		/* report progress */
		if (opts && opts->progress_cb) {
			if ((error = opts->progress_cb(&diff->base,
					info.oitem ? info.oitem->path : NULL,
					info.nitem ? info.nitem->path : NULL,
					opts->payload)))
				break;
		}

		cmp = info.oitem ?
			(info.nitem ? diff->base.entrycomp(info.oitem, info.nitem) : -1) : 1;

		/* create DELETED records for old items not matched in new */
		if (cmp < 0)
			error = FUNC8(diff, &info);

		/* create ADDED, TRACKED, or IGNORED records for new items not
		 * matched in old (and/or descend into directories as needed)
		 */
		else if (cmp > 0)
			error = FUNC7(diff, &info);

		/* otherwise item paths match, so create MODIFIED record
		 * (or ADDED and DELETED pair if type changed)
		 */
		else
			error = FUNC6(diff, &info);
	}

	diff->base.perf.stat_calls +=
		old_iter->stat_calls + new_iter->stat_calls;

cleanup:
	if (!error)
		*out = &diff->base;
	else
		FUNC4(&diff->base);

	return error;
}