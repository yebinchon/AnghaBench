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
struct TYPE_4__ {scalar_t__ customWidth; scalar_t__ customHeight; scalar_t__ brightness; scalar_t__* solid; float** solidColor; int w; int h; int /*<<< orphan*/ ** bspLuxels; } ;
typedef  TYPE_1__ rawLightmap_t ;
typedef  int /*<<< orphan*/  qboolean ;

/* Variables and functions */
 float* FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (float*,float*,float*) ; 
 int /*<<< orphan*/  FUNC2 (float*,float*) ; 
 int /*<<< orphan*/  FUNC3 (float*,float,float*) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

__attribute__((used)) static qboolean FUNC4( rawLightmap_t *a, int aNum, rawLightmap_t *b, int bNum ){
	rawLightmap_t   *lm;
	int x, y;
	float luxel[ 3 ], *aLuxel, *bLuxel;


	/* basic tests */
	if ( a->customWidth != b->customWidth || a->customHeight != b->customHeight ||
		 a->brightness != b->brightness ||
		 a->solid[ aNum ] != b->solid[ bNum ] ||
		 a->bspLuxels[ aNum ] == NULL || b->bspLuxels[ bNum ] == NULL ) {
		return qfalse;
	}

	/* compare solid lightmaps */
	if ( a->solid[ aNum ] && b->solid[ bNum ] ) {
		/* average */
		FUNC1( a->solidColor[ aNum ], b->solidColor[ bNum ], luxel );
		FUNC3( luxel, 0.5f, luxel );

		/* copy to both */
		FUNC2( luxel, a->solidColor[ aNum ] );
		FUNC2( luxel, b->solidColor[ bNum ] );

		/* return to sender */
		return qtrue;
	}

	/* compare nonsolid lightmaps */
	if ( a->w != b->w || a->h != b->h ) {
		return qfalse;
	}

	/* merge luxels */
	for ( y = 0; y < a->h; y++ )
	{
		for ( x = 0; x < a->w; x++ )
		{
			/* get luxels */
			lm = a; aLuxel = FUNC0( aNum, x, y );
			lm = b; bLuxel = FUNC0( bNum, x, y );

			/* handle occlusion mismatch */
			if ( aLuxel[ 0 ] < 0.0f ) {
				FUNC2( bLuxel, aLuxel );
			}
			else if ( bLuxel[ 0 ] < 0.0f ) {
				FUNC2( aLuxel, bLuxel );
			}
			else
			{
				/* average */
				FUNC1( aLuxel, bLuxel, luxel );
				FUNC3( luxel, 0.5f, luxel );

				/* debugging code */
				//%	luxel[ 2 ] += 64.0f;

				/* copy to both */
				FUNC2( luxel, aLuxel );
				FUNC2( luxel, bLuxel );
			}
		}
	}

	/* done */
	return qtrue;
}