#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int numpoints; int /*<<< orphan*/ * p; } ;
typedef  TYPE_1__ winding_accu_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

winding_accu_t *FUNC4( winding_accu_t *w ){
	int i;
	winding_accu_t  *c;

	if ( !w ) {
		FUNC1( "CopyWindingAccuIncreaseSizeAndFreeOld: winding is NULL" );
	}

	c = FUNC0( w->numpoints + 1 );
	c->numpoints = w->numpoints;
	for ( i = 0; i < c->numpoints; i++ )
	{
		FUNC3( w->p[i], c->p[i] );
	}
	FUNC2( w );
	return c;
}