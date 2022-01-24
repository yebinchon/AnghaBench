#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  nstime_t ;
typedef  int /*<<< orphan*/  eset_t ;
typedef  int /*<<< orphan*/  arena_t ;
struct TYPE_10__ {int /*<<< orphan*/  epoch; int /*<<< orphan*/  mtx; } ;
typedef  TYPE_1__ arena_decay_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static bool
FUNC16(tsdn_t *tsdn, arena_t *arena, arena_decay_t *decay,
    eset_t *eset, bool is_background_thread) {
	FUNC9(tsdn, &decay->mtx);

	/* Purge all or nothing if the option is disabled. */
	ssize_t decay_ms = FUNC4(decay);
	if (decay_ms <= 0) {
		if (decay_ms == 0) {
			FUNC5(tsdn, arena, decay, eset, false,
			    0, FUNC8(eset),
			    is_background_thread);
		}
		return false;
	}

	nstime_t time;
	FUNC12(&time, 0);
	FUNC14(&time);
	if (FUNC15(!FUNC13() && FUNC10(&decay->epoch, &time)
	    > 0)) {
		/*
		 * Time went backwards.  Move the epoch back in time and
		 * generate a new deadline, with the expectation that time
		 * typically flows forward for long enough periods of time that
		 * epochs complete.  Unfortunately, this strategy is susceptible
		 * to clock jitter triggering premature epoch advances, but
		 * clock jitter estimation and compensation isn't feasible here
		 * because calls into this code are event-driven.
		 */
		FUNC11(&decay->epoch, &time);
		FUNC1(decay);
	} else {
		/* Verify that time does not go backwards. */
		FUNC7(FUNC10(&decay->epoch, &time) <= 0);
	}

	/*
	 * If the deadline has been reached, advance to the current epoch and
	 * purge to the new limit if necessary.  Note that dirty pages created
	 * during the current epoch are not subject to purge until a future
	 * epoch, so as a result purging only happens during epoch advances, or
	 * being triggered by background threads (scheduled event).
	 */
	bool advance_epoch = FUNC2(decay, &time);
	if (advance_epoch) {
		FUNC3(tsdn, arena, decay, eset, &time,
		    is_background_thread);
	} else if (is_background_thread) {
		FUNC6(tsdn, arena, decay, eset,
		    FUNC8(eset),
		    FUNC0(decay),
		    is_background_thread);
	}

	return advance_epoch;
}