#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* ps; } ;
struct TYPE_5__ {int /*<<< orphan*/  walking; } ;
struct TYPE_4__ {int /*<<< orphan*/  velocity; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 float FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,float,int /*<<< orphan*/ ) ; 
 TYPE_3__* pm ; 
 TYPE_2__ pml ; 

__attribute__((used)) static void FUNC4( void ) {
	float	forward;

	if ( !pml.walking ) {
		return;
	}

	// extra friction

	forward = FUNC1 (pm->ps->velocity);
	forward -= 20;
	if ( forward <= 0 ) {
		FUNC0 (pm->ps->velocity);
	} else {
		FUNC2 (pm->ps->velocity);
		FUNC3 (pm->ps->velocity, forward, pm->ps->velocity);
	}
}