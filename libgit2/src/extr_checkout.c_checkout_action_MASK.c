#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_7__ ;
typedef  struct TYPE_33__   TYPE_6__ ;
typedef  struct TYPE_32__   TYPE_4__ ;
typedef  struct TYPE_31__   TYPE_3__ ;
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_vector ;
typedef  int /*<<< orphan*/  git_iterator ;
struct TYPE_32__ {char const* path; scalar_t__ mode; } ;
typedef  TYPE_4__ git_index_entry ;
struct TYPE_31__ {char const* path; scalar_t__ mode; } ;
struct TYPE_30__ {scalar_t__ mode; } ;
struct TYPE_33__ {scalar_t__ status; TYPE_3__ old_file; TYPE_2__ new_file; } ;
typedef  TYPE_6__ git_diff_delta ;
struct TYPE_34__ {TYPE_1__* diff; } ;
typedef  TYPE_7__ checkout_data ;
struct TYPE_29__ {int (* strcomp ) (char const*,char const*) ;int (* pfxcomp ) (char const*,char const*) ;} ;

/* Variables and functions */
 scalar_t__ GIT_DELTA_TYPECHANGE ; 
 scalar_t__ GIT_FILEMODE_COMMIT ; 
 scalar_t__ GIT_FILEMODE_TREE ; 
 int GIT_ITEROVER ; 
 int FUNC0 (int*,TYPE_7__*,TYPE_6__*) ; 
 int FUNC1 (TYPE_7__*,int /*<<< orphan*/ *,TYPE_4__ const**,int /*<<< orphan*/ *) ; 
 int FUNC2 (int*,TYPE_7__*,TYPE_6__*,int /*<<< orphan*/ *,TYPE_4__ const*) ; 
 int FUNC3 (int*,TYPE_7__*,TYPE_6__*,TYPE_4__ const*) ; 
 int FUNC4 (int*,TYPE_7__*,TYPE_6__*,int /*<<< orphan*/ *,TYPE_4__ const*) ; 
 int FUNC5 (int*,TYPE_7__*,TYPE_6__*) ; 
 scalar_t__ FUNC6 (TYPE_7__*,char*) ; 
 int FUNC7 (TYPE_4__ const**,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_4__ const**,int /*<<< orphan*/ *) ; 
 size_t FUNC9 (char const*) ; 

__attribute__((used)) static int FUNC10(
	int *action,
	checkout_data *data,
	git_diff_delta *delta,
	git_iterator *workdir,
	const git_index_entry **wditem,
	git_vector *pathspec)
{
	int cmp = -1, error;
	int (*strcomp)(const char *, const char *) = data->diff->strcomp;
	int (*pfxcomp)(const char *str, const char *pfx) = data->diff->pfxcomp;
	int (*advance)(const git_index_entry **, git_iterator *) = NULL;

	/* move workdir iterator to follow along with deltas */

	while (1) {
		const git_index_entry *wd = *wditem;

		if (!wd)
			return FUNC0(action, data, delta);

		cmp = strcomp(wd->path, delta->old_file.path);

		/* 1. wd before delta ("a/a" before "a/b")
		 * 2. wd prefixes delta & should expand ("a/" before "a/b")
		 * 3. wd prefixes delta & cannot expand ("a/b" before "a/b/c")
		 * 4. wd equals delta ("a/b" and "a/b")
		 * 5. wd after delta & delta prefixes wd ("a/b/c" after "a/b/" or "a/b")
		 * 6. wd after delta ("a/c" after "a/b")
		 */

		if (cmp < 0) {
			cmp = pfxcomp(delta->old_file.path, wd->path);

			if (cmp == 0) {
				if (wd->mode == GIT_FILEMODE_TREE) {
					/* case 2 - entry prefixed by workdir tree */
					error = FUNC8(wditem, workdir);
					if (error < 0 && error != GIT_ITEROVER)
						goto done;
					continue;
				}

				/* case 3 maybe - wd contains non-dir where dir expected */
				if (delta->old_file.path[FUNC9(wd->path)] == '/') {
					error = FUNC3(
						action, data, delta, wd);
					advance = git_iterator_advance;
					goto done;
				}
			}

			/* case 1 - handle wd item (if it matches pathspec) */
			error = FUNC1(data, workdir, wditem, pathspec);
			if (error && error != GIT_ITEROVER)
				goto done;
			continue;
		}

		if (cmp == 0) {
			/* case 4 */
			error = FUNC2(action, data, delta, workdir, wd);
			advance = git_iterator_advance;
			goto done;
		}

		cmp = pfxcomp(wd->path, delta->old_file.path);

		if (cmp == 0) { /* case 5 */
			if (wd->path[FUNC9(delta->old_file.path)] != '/')
				return FUNC0(action, data, delta);

			if (delta->status == GIT_DELTA_TYPECHANGE) {
				if (delta->old_file.mode == GIT_FILEMODE_TREE) {
					error = FUNC2(action, data, delta, workdir, wd);
					advance = git_iterator_advance_into;
					goto done;
				}

				if (delta->new_file.mode == GIT_FILEMODE_TREE ||
					delta->new_file.mode == GIT_FILEMODE_COMMIT ||
					delta->old_file.mode == GIT_FILEMODE_COMMIT)
				{
					error = FUNC2(action, data, delta, workdir, wd);
					advance = git_iterator_advance;
					goto done;
				}
			}

			return FUNC6(data, wd->path) ?
				FUNC5(action, data, delta) :
				FUNC4(action, data, delta, workdir, wd);
		}

		/* case 6 - wd is after delta */
		return FUNC0(action, data, delta);
	}

done:
	if (!error && advance != NULL &&
		(error = advance(wditem, workdir)) < 0) {
		*wditem = NULL;
		if (error == GIT_ITEROVER)
			error = 0;
	}

	return error;
}