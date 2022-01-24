#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {float* lightGridInverseSize; float* lightGridSize; int* lightGridOrigin; int* lightGridBounds; int /*<<< orphan*/ * lightGridData; TYPE_1__* bmodels; } ;
typedef  TYPE_2__ world_t ;
typedef  int* vec3_t ;
struct TYPE_9__ {int filelen; scalar_t__ fileofs; } ;
typedef  TYPE_3__ lump_t ;
struct TYPE_10__ {int /*<<< orphan*/ * (* Hunk_Alloc ) (int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* Printf ) (int /*<<< orphan*/ ,char*) ;} ;
struct TYPE_7__ {float** bounds; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  PRINT_WARNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (float) ; 
 scalar_t__ fileBase ; 
 int FUNC3 (float) ; 
 int /*<<< orphan*/  h_low ; 
 TYPE_5__ ri ; 
 TYPE_2__ s_worldData ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int,int /*<<< orphan*/ ) ; 

void FUNC6( lump_t *l ) {
	int		i;
	vec3_t	maxs;
	int		numGridPoints;
	world_t	*w;
	float	*wMins, *wMaxs;

	w = &s_worldData;

	w->lightGridInverseSize[0] = 1.0f / w->lightGridSize[0];
	w->lightGridInverseSize[1] = 1.0f / w->lightGridSize[1];
	w->lightGridInverseSize[2] = 1.0f / w->lightGridSize[2];

	wMins = w->bmodels[0].bounds[0];
	wMaxs = w->bmodels[0].bounds[1];

	for ( i = 0 ; i < 3 ; i++ ) {
		w->lightGridOrigin[i] = w->lightGridSize[i] * FUNC2( wMins[i] / w->lightGridSize[i] );
		maxs[i] = w->lightGridSize[i] * FUNC3( wMaxs[i] / w->lightGridSize[i] );
		w->lightGridBounds[i] = (maxs[i] - w->lightGridOrigin[i])/w->lightGridSize[i] + 1;
	}

	numGridPoints = w->lightGridBounds[0] * w->lightGridBounds[1] * w->lightGridBounds[2];

	if ( l->filelen != numGridPoints * 8 ) {
		ri.Printf( PRINT_WARNING, "WARNING: light grid mismatch\n" );
		w->lightGridData = NULL;
		return;
	}

	w->lightGridData = ri.Hunk_Alloc( l->filelen, h_low );
	FUNC0( w->lightGridData, (void *)(fileBase + l->fileofs), l->filelen );

	// deal with overbright bits
	for ( i = 0 ; i < numGridPoints ; i++ ) {
		FUNC1( &w->lightGridData[i*8], &w->lightGridData[i*8] );
		FUNC1( &w->lightGridData[i*8+3], &w->lightGridData[i*8+3] );
	}
}