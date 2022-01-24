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
struct TYPE_7__ {int numsides; TYPE_1__* sides; } ;
typedef  TYPE_2__ brush_t ;
struct TYPE_6__ {int /*<<< orphan*/ * winding; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SYS_VRB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  numActiveBrushes ; 
 int numthreads ; 

void FUNC4( brush_t *b ){
	int i;


	/* error check */
	if ( *( (unsigned int*) b ) == 0xFEFEFEFE ) {
		FUNC1( SYS_VRB, "WARNING: Attempt to free an already freed brush!\n" );
		return;
	}

	/* free brush sides */
	for ( i = 0; i < b->numsides; i++ )
		if ( b->sides[i].winding != NULL ) {
			FUNC0( b->sides[ i ].winding );
		}

	/* ydnar: overwrite it */
	FUNC3( b, 0xFE, sizeof( *b ) + sizeof( *b->sides ) * b->numsides );
	*( (unsigned int*) b ) = 0xFEFEFEFE;

	/* free it */
	FUNC2( b );
	if ( numthreads == 1 ) {
		numActiveBrushes--;
	}
}