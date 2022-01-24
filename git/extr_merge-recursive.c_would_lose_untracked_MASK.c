#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct merge_options {TYPE_1__* repo; } ;
struct index_state {int cache_nr; TYPE_2__** cache; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {struct index_state* index; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (struct index_state*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(struct merge_options *opt, const char *path)
{
	struct index_state *istate = opt->repo->index;

	/*
	 * This may look like it can be simplified to:
	 *   return !was_tracked(opt, path) && file_exists(path)
	 * but it can't.  This function needs to know whether path was in
	 * the working tree due to EITHER having been tracked in the index
	 * before the merge OR having been put into the working copy and
	 * index by unpack_trees().  Due to that either-or requirement, we
	 * check the current index instead of the original one.
	 *
	 * Note that we do not need to worry about merge-recursive itself
	 * updating the index after unpack_trees() and before calling this
	 * function, because we strictly require all code paths in
	 * merge-recursive to update the working tree first and the index
	 * second.  Doing otherwise would break
	 * update_file()/would_lose_untracked(); see every comment in this
	 * file which mentions "update_stages".
	 */
	int pos = FUNC2(istate, path, FUNC4(path));

	if (pos < 0)
		pos = -1 - pos;
	while (pos < istate->cache_nr &&
	       !FUNC3(path, istate->cache[pos]->name)) {
		/*
		 * If stage #0, it is definitely tracked.
		 * If it has stage #2 then it was tracked
		 * before this merge started.  All other
		 * cases the path was not tracked.
		 */
		switch (FUNC0(istate->cache[pos])) {
		case 0:
		case 2:
			return 0;
		}
		pos++;
	}
	return FUNC1(path);
}