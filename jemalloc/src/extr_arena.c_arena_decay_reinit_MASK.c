#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  scalar_t__ ssize_t ;
struct TYPE_5__ {int jitter_state; int /*<<< orphan*/  backlog; scalar_t__ nunpurged; int /*<<< orphan*/  epoch; int /*<<< orphan*/  interval; } ;
typedef  TYPE_1__ arena_decay_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int SMOOTHSTEP_NSTEPS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(arena_decay_t *decay, ssize_t decay_ms) {
	FUNC2(decay, decay_ms);
	if (decay_ms > 0) {
		FUNC5(&decay->interval, (uint64_t)decay_ms *
		    FUNC0(1000000));
		FUNC4(&decay->interval, SMOOTHSTEP_NSTEPS);
	}

	FUNC5(&decay->epoch, 0);
	FUNC6(&decay->epoch);
	decay->jitter_state = (uint64_t)(uintptr_t)decay;
	FUNC1(decay);
	decay->nunpurged = 0;
	FUNC3(decay->backlog, 0, SMOOTHSTEP_NSTEPS * sizeof(size_t));
}