#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsd_t ;
struct TYPE_2__ {int /*<<< orphan*/  phase; int /*<<< orphan*/  error; } ;
typedef  TYPE_1__ global_slow_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATOMIC_SEQ_CST ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ originally_fast ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 

__attribute__((used)) static void *
FUNC7(void *arg) {
	/* PHASE 0 */
	global_slow_data_t *data = (global_slow_data_t *)arg;
	FUNC3(FUNC4(1, 0));

	tsd_t *tsd = FUNC6();
	/*
	 * No global slowness has happened yet; there was an error if we were
	 * originally fast but aren't now.
	 */
	FUNC1(&data->error, originally_fast && !FUNC5(tsd),
	    ATOMIC_SEQ_CST);
	FUNC2(&data->phase, 1, ATOMIC_SEQ_CST);

	/* PHASE 2 */
	while (FUNC0(&data->phase, ATOMIC_SEQ_CST) != 2) {
	}
	FUNC3(FUNC4(1, 0));
	FUNC1(&data->error, FUNC5(tsd), ATOMIC_SEQ_CST);
	FUNC2(&data->phase, 3, ATOMIC_SEQ_CST);

	/* PHASE 4 */
	while (FUNC0(&data->phase, ATOMIC_SEQ_CST) != 4) {
	}
	FUNC3(FUNC4(1, 0));
	FUNC1(&data->error, FUNC5(tsd), ATOMIC_SEQ_CST);
	FUNC2(&data->phase, 5, ATOMIC_SEQ_CST);

	/* PHASE 6 */
	while (FUNC0(&data->phase, ATOMIC_SEQ_CST) != 6) {
	}
	FUNC3(FUNC4(1, 0));
	/* Only one decrement so far. */
	FUNC1(&data->error, FUNC5(tsd), ATOMIC_SEQ_CST);
	FUNC2(&data->phase, 7, ATOMIC_SEQ_CST);

	/* PHASE 8 */
	while (FUNC0(&data->phase, ATOMIC_SEQ_CST) != 8) {
	}
	FUNC3(FUNC4(1, 0));
	/*
	 * Both decrements happened; we should be fast again (if we ever
	 * were)
	 */
	FUNC1(&data->error, originally_fast && !FUNC5(tsd),
	    ATOMIC_SEQ_CST);
	FUNC2(&data->phase, 9, ATOMIC_SEQ_CST);

	return NULL;
}