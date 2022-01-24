#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int numSTArrays; int numColorArrays; struct TYPE_5__** color; struct TYPE_5__** st; struct TYPE_5__* name; struct TYPE_5__* faceNormal; struct TYPE_5__* index; struct TYPE_5__* smoothingGroup; struct TYPE_5__* normal; struct TYPE_5__* xyz; } ;
typedef  TYPE_1__ picoSurface_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**) ; 

void FUNC2( picoSurface_t *surface ){
	int i;

	/* dummy check */
	if ( surface == NULL ) {
		return;
	}

	/* free bits */
	FUNC0( surface->xyz );
	FUNC0( surface->normal );
	FUNC0( surface->smoothingGroup );
	FUNC0( surface->index );
	FUNC0( surface->faceNormal );

	if ( surface->name ) {
		FUNC0( surface->name );
	}

	/* free arrays */
	for ( i = 0; i < surface->numSTArrays; i++ )
		FUNC0( surface->st[ i ] );
	FUNC1( surface->st );
	for ( i = 0; i < surface->numColorArrays; i++ )
		FUNC0( surface->color[ i ] );
	FUNC1( surface->color );

	/* free the surface */
	FUNC0( surface );
}