#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int* down; void* wasPressed; void* active; void* downtime; } ;
typedef  TYPE_1__ kbutton_t ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 void* FUNC2 (char*) ; 
 void* qtrue ; 

void FUNC3( kbutton_t *b ) {
	int		k;
	char	*c;
	
	c = FUNC0(1);
	if ( c[0] ) {
		k = FUNC2(c);
	} else {
		k = -1;		// typed manually at the console for continuous down
	}

	if ( k == b->down[0] || k == b->down[1] ) {
		return;		// repeating key
	}
	
	if ( !b->down[0] ) {
		b->down[0] = k;
	} else if ( !b->down[1] ) {
		b->down[1] = k;
	} else {
		FUNC1 ("Three keys down for a button!\n");
		return;
	}
	
	if ( b->active ) {
		return;		// still down
	}

	// save timestamp for partial frame summing
	c = FUNC0(2);
	b->downtime = FUNC2(c);

	b->active = qtrue;
	b->wasPressed = qtrue;
}