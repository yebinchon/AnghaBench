#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int firstDrawSurf; } ;
typedef  TYPE_1__ entity_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SYS_VRB ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/ * mapDrawSurfs ; 
 int numMapDrawSurfs ; 

void FUNC4( entity_t *e ){
	int i;


	/* note it */
	FUNC2( SYS_VRB, "--- ClassifyEntitySurfaces ---\n" );

	/* walk the surface list */
	for ( i = e->firstDrawSurf; i < numMapDrawSurfs; i++ )
	{
		FUNC1( &mapDrawSurfs[ i ] );
		FUNC0( 1, &mapDrawSurfs[ i ] );
	}

	/* tidy things up */
	FUNC3( e );
}