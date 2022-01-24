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
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {TYPE_2__ viewParms; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int VPF_SHADOWMAP ; 
 TYPE_1__ tr ; 

void FUNC5( void ) {
	FUNC2 ();

	FUNC1();

	// set the projection matrix with the minimum zfar
	// now that we have the world bounded
	// this needs to be done before entities are
	// added, because they use the projection
	// matrix for lod calculation

	// dynamically compute far clip plane distance
	if (!(tr.viewParms.flags & VPF_SHADOWMAP))
	{
		FUNC3();
	}

	// we know the size of the clipping volume. Now set the rest of the projection matrix.
	FUNC4 (&tr.viewParms);

	FUNC0 ();
}