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
typedef  int /*<<< orphan*/  winding_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  c_active_windings ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int numthreads ; 

void FUNC2( winding_t *w ){
	if ( !w ) {
		FUNC0( "FreeWinding: winding is NULL" );
	}

	if ( *(unsigned *)w == 0xdeaddead ) {
		FUNC0( "FreeWinding: freed a freed winding" );
	}
	*(unsigned *)w = 0xdeaddead;

	if ( numthreads == 1 ) {
		c_active_windings--;
	}
	FUNC1( w );
}