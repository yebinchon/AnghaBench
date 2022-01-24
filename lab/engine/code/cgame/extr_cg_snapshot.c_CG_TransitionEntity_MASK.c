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
struct TYPE_5__ {scalar_t__ interpolate; int /*<<< orphan*/  currentValid; int /*<<< orphan*/  nextState; int /*<<< orphan*/  currentState; } ;
typedef  TYPE_1__ centity_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ qfalse ; 
 int /*<<< orphan*/  qtrue ; 

__attribute__((used)) static void FUNC2( centity_t *cent ) {
	cent->currentState = cent->nextState;
	cent->currentValid = qtrue;

	// reset if the entity wasn't in the last frame or was teleported
	if ( !cent->interpolate ) {
		FUNC1( cent );
	}

	// clear the next state.  if will be set by the next CG_SetNextSnap
	cent->interpolate = qfalse;

	// check for events
	FUNC0( cent );
}