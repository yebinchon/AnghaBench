#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int numpoints; int /*<<< orphan*/ * p; } ;
typedef  TYPE_1__ winding_t ;
struct TYPE_7__ {int numpoints; int /*<<< orphan*/ * p; } ;
typedef  TYPE_2__ winding_accu_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

winding_t   *FUNC3( winding_accu_t *w ){
	int i;
	winding_t   *c;

	if ( !w ) {
		FUNC1( "CopyWindingAccuToRegular: winding is NULL" );
	}

	c = FUNC0( w->numpoints );
	c->numpoints = w->numpoints;
	for ( i = 0; i < c->numpoints; i++ )
	{
		FUNC2( w->p[i], c->p[i] );
	}
	return c;
}