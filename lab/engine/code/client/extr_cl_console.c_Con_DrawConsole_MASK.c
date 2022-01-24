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
struct TYPE_4__ {scalar_t__ state; } ;
struct TYPE_3__ {double displayFrac; } ;

/* Variables and functions */
 scalar_t__ CA_ACTIVE ; 
 scalar_t__ CA_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (double) ; 
 int KEYCATCH_CGAME ; 
 int KEYCATCH_UI ; 
 int FUNC3 () ; 
 TYPE_2__ clc ; 
 TYPE_1__ con ; 

void FUNC4( void ) {
	// check for console width changes from a vid mode change
	FUNC0 ();

	// if disconnected, render console full screen
	if ( clc.state == CA_DISCONNECTED ) {
		if ( !( FUNC3( ) & (KEYCATCH_UI | KEYCATCH_CGAME)) ) {
			FUNC2( 1.0 );
			return;
		}
	}

	if ( con.displayFrac ) {
		FUNC2( con.displayFrac );
	} else {
		// draw notify lines
		if ( clc.state == CA_ACTIVE ) {
			FUNC1 ();
		}
	}
}