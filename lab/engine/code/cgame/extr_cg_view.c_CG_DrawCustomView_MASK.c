#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  time; } ;
struct TYPE_7__ {TYPE_2__ refdef; int /*<<< orphan*/  renderingThirdPerson; int /*<<< orphan*/  time; TYPE_1__* snap; } ;
struct TYPE_5__ {int snapFlags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int SNAPFLAG_NOT_ACTIVE ; 
 TYPE_4__ cg ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

void FUNC7() {
	FUNC5();
	if ( !cg.snap || ( cg.snap->snapFlags & SNAPFLAG_NOT_ACTIVE ) ) {
		return;
	}
	cg.refdef.time = cg.time;
	cg.renderingThirdPerson = FUNC4( &cg.refdef );
	FUNC2();
	FUNC1();
	FUNC3();
	FUNC0();

	// actually issue the rendering calls
	FUNC6( &cg.refdef );
}