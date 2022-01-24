#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_patch ;
typedef  scalar_t__ (* git_diff_line_cb ) (TYPE_1__ const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,void*) ;
typedef  int /*<<< orphan*/  git_diff_line ;
typedef  scalar_t__ (* git_diff_hunk_cb ) (TYPE_1__ const*,int /*<<< orphan*/  const*,void*) ;
typedef  int /*<<< orphan*/  git_diff_hunk ;
typedef  scalar_t__ (* git_diff_file_cb ) (TYPE_1__ const*,float,void*) ;
struct TYPE_9__ {scalar_t__ status; int flags; } ;
typedef  TYPE_1__ git_diff_delta ;
typedef  int /*<<< orphan*/  git_diff_binary_cb ;
typedef  int /*<<< orphan*/  git_diff ;

/* Variables and functions */
 scalar_t__ GIT_DELTA_UNMODIFIED ; 
 int GIT_DIFF_FLAG_BINARY ; 
 int GIT_EUSER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,size_t) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *,size_t,size_t) ; 
 size_t FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(
	git_diff *diff,
	git_diff_file_cb file_cb,
	git_diff_binary_cb binary_cb,
	git_diff_hunk_cb hunk_cb,
	git_diff_line_cb line_cb,
	void *data)
{
	size_t d, num_d = FUNC3(diff);

	FUNC0(binary_cb);

	for (d = 0; d < num_d; ++d) {
		git_patch *patch;
		const git_diff_delta *delta;
		size_t h, num_h;

		FUNC2(FUNC6(&patch, diff, d));
		FUNC1((delta = FUNC7(patch)) != NULL);

		/* call file_cb for this file */
		if (file_cb != NULL && file_cb(delta, (float)d / num_d, data) != 0) {
			FUNC5(patch);
			goto abort;
		}

		/* if there are no changes, then the patch will be NULL */
		if (!patch) {
			FUNC1(delta->status == GIT_DELTA_UNMODIFIED ||
					  (delta->flags & GIT_DIFF_FLAG_BINARY) != 0);
			continue;
		}

		if (!hunk_cb && !line_cb) {
			FUNC5(patch);
			continue;
		}

		num_h = FUNC10(patch);

		for (h = 0; h < num_h; h++) {
			const git_diff_hunk *hunk;
			size_t l, num_l;

			FUNC2(FUNC8(&hunk, &num_l, patch, h));

			if (hunk_cb && hunk_cb(delta, hunk, data) != 0) {
				FUNC5(patch);
				goto abort;
			}

			for (l = 0; l < num_l; ++l) {
				const git_diff_line *line;

				FUNC2(FUNC9(&line, patch, h, l));

				if (line_cb &&
					line_cb(delta, hunk, line, data) != 0) {
					FUNC5(patch);
					goto abort;
				}
			}
		}

		FUNC5(patch);
	}

	return 0;

abort:
	FUNC4();
	return GIT_EUSER;
}