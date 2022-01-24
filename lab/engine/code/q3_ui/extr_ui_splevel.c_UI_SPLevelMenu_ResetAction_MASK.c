#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  qboolean ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static void FUNC5( qboolean result ) {
	if( !result ) {
		return;
	}

	// clear game variables
	FUNC1();
	if ( FUNC0( "training" ) ) {
		FUNC4( "ui_spSelection", -4 );
	} else {
		FUNC4( "ui_spSelection", 0 );
	}

	// make the level select menu re-initialize
	FUNC2();
	FUNC3();
}