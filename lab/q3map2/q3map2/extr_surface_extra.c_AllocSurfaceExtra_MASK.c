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
typedef  int /*<<< orphan*/  surfaceExtra_t ;

/* Variables and functions */
 scalar_t__ GROW_SURFACE_EXTRAS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int maxSurfaceExtras ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int numSurfaceExtras ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  seDefault ; 
 int /*<<< orphan*/ * surfaceExtras ; 

__attribute__((used)) static surfaceExtra_t *FUNC3( void ){
	surfaceExtra_t  *se;


	/* enough space? */
	if ( numSurfaceExtras >= maxSurfaceExtras ) {
		/* reallocate more room */
		maxSurfaceExtras += GROW_SURFACE_EXTRAS;
		se = FUNC2( maxSurfaceExtras * sizeof( surfaceExtra_t ) );
		if ( surfaceExtras != NULL ) {
			FUNC1( se, surfaceExtras, numSurfaceExtras * sizeof( surfaceExtra_t ) );
			FUNC0( surfaceExtras );
		}
		surfaceExtras = se;
	}

	/* add another */
	se = &surfaceExtras[ numSurfaceExtras ];
	numSurfaceExtras++;
	FUNC1( se, &seDefault, sizeof( surfaceExtra_t ) );

	/* return it */
	return se;
}