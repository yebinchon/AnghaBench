#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  nstime_t ;
struct TYPE_6__ {scalar_t__ max_n_thds; int /*<<< orphan*/  max_wait_time; int /*<<< orphan*/  tot_wait_time; int /*<<< orphan*/  n_wait_times; int /*<<< orphan*/  n_waiting_thds; int /*<<< orphan*/  n_spin_acquired; } ;
typedef  TYPE_1__ mutex_prof_data_t ;
struct TYPE_7__ {int /*<<< orphan*/  locked; TYPE_1__ prof_data; } ;
typedef  TYPE_2__ malloc_mutex_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATOMIC_RELAXED ; 
 int MALLOC_MUTEX_MAX_SPIN ; 
 int /*<<< orphan*/  NSTIME_ZERO_INITIALIZER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  config_stats ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int ncpus ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 

void
FUNC11(malloc_mutex_t *mutex) {
	mutex_prof_data_t *data = &mutex->prof_data;
	nstime_t before = NSTIME_ZERO_INITIALIZER;

	if (ncpus == 1) {
		goto label_spin_done;
	}

	int cnt = 0, max_cnt = MALLOC_MUTEX_MAX_SPIN;
	do {
		FUNC10();
		if (!FUNC2(&mutex->locked, ATOMIC_RELAXED)
                    && !FUNC4(mutex)) {
			data->n_spin_acquired++;
			return;
		}
	} while (cnt++ < max_cnt);

	if (!config_stats) {
		/* Only spin is useful when stats is off. */
		FUNC3(mutex);
		return;
	}
label_spin_done:
	FUNC9(&before);
	/* Copy before to after to avoid clock skews. */
	nstime_t after;
	FUNC7(&after, &before);
	uint32_t n_thds = FUNC0(&data->n_waiting_thds, 1,
	    ATOMIC_RELAXED) + 1;
	/* One last try as above two calls may take quite some cycles. */
	if (!FUNC4(mutex)) {
		FUNC1(&data->n_waiting_thds, 1, ATOMIC_RELAXED);
		data->n_spin_acquired++;
		return;
	}

	/* True slow path. */
	FUNC3(mutex);
	/* Update more slow-path only counters. */
	FUNC1(&data->n_waiting_thds, 1, ATOMIC_RELAXED);
	FUNC9(&after);

	nstime_t delta;
	FUNC7(&delta, &after);
	FUNC8(&delta, &before);

	data->n_wait_times++;
	FUNC5(&data->tot_wait_time, &delta);
	if (FUNC6(&data->max_wait_time, &delta) < 0) {
		FUNC7(&data->max_wait_time, &delta);
	}
	if (n_thds > data->max_n_thds) {
		data->max_n_thds = n_thds;
	}
}