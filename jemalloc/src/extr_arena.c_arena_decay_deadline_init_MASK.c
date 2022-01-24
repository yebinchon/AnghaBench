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
typedef  int /*<<< orphan*/  nstime_t ;
struct TYPE_4__ {int /*<<< orphan*/  deadline; int /*<<< orphan*/  interval; int /*<<< orphan*/  jitter_state; int /*<<< orphan*/  epoch; } ;
typedef  TYPE_1__ arena_decay_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(arena_decay_t *decay) {
	/*
	 * Generate a new deadline that is uniformly random within the next
	 * epoch after the current one.
	 */
	FUNC2(&decay->deadline, &decay->epoch);
	FUNC1(&decay->deadline, &decay->interval);
	if (FUNC0(decay) > 0) {
		nstime_t jitter;

		FUNC3(&jitter, FUNC5(&decay->jitter_state,
		    FUNC4(&decay->interval)));
		FUNC1(&decay->deadline, &jitter);
	}
}