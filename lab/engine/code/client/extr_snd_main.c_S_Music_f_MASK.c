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
struct TYPE_2__ {int /*<<< orphan*/  (* StartBackgroundTrack ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__ si ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC5( void ) {
	int		c;

	if( !si.StartBackgroundTrack ) {
		return;
	}

	c = FUNC0();

	if ( c == 2 ) {
		si.StartBackgroundTrack( FUNC1(1), NULL );
	} else if ( c == 3 ) {
		si.StartBackgroundTrack( FUNC1(1), FUNC1(2) );
	} else {
		FUNC2 ("Usage: music <musicfile> [loopfile]\n");
		return;
	}

}