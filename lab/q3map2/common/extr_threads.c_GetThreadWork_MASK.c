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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int dispatch ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int oldf ; 
 scalar_t__ pacifier ; 
 int /*<<< orphan*/  stdout ; 
 int workcount ; 

int FUNC4( void ){
	int r;
	int f;

	FUNC1();

	if ( dispatch == workcount ) {
		FUNC2();
		return -1;
	}

	f = 10 * dispatch / workcount;
	if ( f != oldf ) {
		oldf = f;
		if ( pacifier ) {
			FUNC0( "%i...", f );
			FUNC3( stdout );   /* ydnar */
		}
	}

	r = dispatch;
	dispatch++;
	FUNC2();

	return r;
}