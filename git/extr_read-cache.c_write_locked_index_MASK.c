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
struct tempfile {int dummy; } ;
struct TYPE_4__ {int* hash; } ;
struct split_index {TYPE_1__ base_oid; } ;
struct lock_file {int dummy; } ;
struct index_state {int cache_changed; scalar_t__ fsmonitor_last_update; struct split_index* split_index; } ;

/* Variables and functions */
 unsigned int COMMIT_LOCK ; 
 int EXTMASK ; 
 unsigned int SKIP_IF_UNCHANGED ; 
 int SPLIT_INDEX_ORDERED ; 
 scalar_t__ alternate_index_output ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct index_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct tempfile**) ; 
 int FUNC2 (struct index_state*,struct lock_file*,unsigned int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (struct index_state*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (struct tempfile*) ; 
 struct tempfile* FUNC9 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (struct lock_file*) ; 
 int /*<<< orphan*/  the_repository ; 
 scalar_t__ FUNC13 (struct index_state*) ; 
 int FUNC14 (struct index_state*,struct tempfile**) ; 
 int FUNC15 (struct index_state*,struct lock_file*,unsigned int) ; 

int FUNC16(struct index_state *istate, struct lock_file *lock,
		       unsigned flags)
{
	int new_shared_index, ret;
	struct split_index *si = istate->split_index;

	if (FUNC5("GIT_TEST_CHECK_CACHE_TREE", 0))
		FUNC0(the_repository, istate);

	if ((flags & SKIP_IF_UNCHANGED) && !istate->cache_changed) {
		if (flags & COMMIT_LOCK)
			FUNC12(lock);
		return 0;
	}

	if (istate->fsmonitor_last_update)
		FUNC3(istate);

	if (!si || alternate_index_output ||
	    (istate->cache_changed & ~EXTMASK)) {
		if (si)
			FUNC11(&si->base_oid);
		ret = FUNC2(istate, lock, flags);
		goto out;
	}

	if (FUNC5("GIT_TEST_SPLIT_INDEX", 0)) {
		int v = si->base_oid.hash[0];
		if ((v & 15) < 6)
			istate->cache_changed |= SPLIT_INDEX_ORDERED;
	}
	if (FUNC13(istate))
		istate->cache_changed |= SPLIT_INDEX_ORDERED;

	new_shared_index = istate->cache_changed & SPLIT_INDEX_ORDERED;

	if (new_shared_index) {
		struct tempfile *temp;
		int saved_errno;

		/* Same initial permissions as the main .git/index file */
		temp = FUNC9(FUNC6("sharedindex_XXXXXX"), 0, 0666);
		if (!temp) {
			FUNC11(&si->base_oid);
			ret = FUNC2(istate, lock, flags);
			goto out;
		}
		ret = FUNC14(istate, &temp);

		saved_errno = errno;
		if (FUNC8(temp))
			FUNC1(&temp);
		errno = saved_errno;

		if (ret)
			goto out;
	}

	ret = FUNC15(istate, lock, flags);

	/* Freshen the shared index only if the split-index was written */
	if (!ret && !new_shared_index && !FUNC7(&si->base_oid)) {
		const char *shared_index = FUNC6("sharedindex.%s",
						    FUNC10(&si->base_oid));
		FUNC4(shared_index, 1);
	}

out:
	if (flags & COMMIT_LOCK)
		FUNC12(lock);
	return ret;
}