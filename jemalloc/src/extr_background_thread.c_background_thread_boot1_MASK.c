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
typedef  int /*<<< orphan*/  tsdn_t ;
struct TYPE_4__ {int /*<<< orphan*/  mtx; int /*<<< orphan*/  state; int /*<<< orphan*/  cond; } ;
typedef  TYPE_1__ background_thread_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  CACHELINE ; 
 int DEFAULT_NUM_BACKGROUND_THREAD ; 
 int MAX_BACKGROUND_THREAD_LIMIT ; 
 int /*<<< orphan*/  WITNESS_RANK_BACKGROUND_THREAD ; 
 int /*<<< orphan*/  WITNESS_RANK_BACKGROUND_THREAD_GLOBAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* background_thread_info ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  background_thread_lock ; 
 int /*<<< orphan*/  background_thread_stopped ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int have_background_thread ; 
 int /*<<< orphan*/  malloc_mutex_address_ordered ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  malloc_mutex_rank_exclusive ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int max_background_threads ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  opt_background_thread ; 
 int opt_max_background_threads ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

bool
FUNC10(tsdn_t *tsdn) {
#ifdef JEMALLOC_BACKGROUND_THREAD
	assert(have_background_thread);
	assert(narenas_total_get() > 0);

	if (opt_max_background_threads > MAX_BACKGROUND_THREAD_LIMIT) {
		opt_max_background_threads = DEFAULT_NUM_BACKGROUND_THREAD;
	}
	max_background_threads = opt_max_background_threads;

	background_thread_enabled_set(tsdn, opt_background_thread);
	if (malloc_mutex_init(&background_thread_lock,
	    "background_thread_global",
	    WITNESS_RANK_BACKGROUND_THREAD_GLOBAL,
	    malloc_mutex_rank_exclusive)) {
		return true;
	}

	background_thread_info = (background_thread_info_t *)base_alloc(tsdn,
	    b0get(), opt_max_background_threads *
	    sizeof(background_thread_info_t), CACHELINE);
	if (background_thread_info == NULL) {
		return true;
	}

	for (unsigned i = 0; i < max_background_threads; i++) {
		background_thread_info_t *info = &background_thread_info[i];
		/* Thread mutex is rank_inclusive because of thread0. */
		if (malloc_mutex_init(&info->mtx, "background_thread",
		    WITNESS_RANK_BACKGROUND_THREAD,
		    malloc_mutex_address_ordered)) {
			return true;
		}
		if (pthread_cond_init(&info->cond, NULL)) {
			return true;
		}
		malloc_mutex_lock(tsdn, &info->mtx);
		info->state = background_thread_stopped;
		background_thread_info_init(tsdn, info);
		malloc_mutex_unlock(tsdn, &info->mtx);
	}
#endif

	return false;
}