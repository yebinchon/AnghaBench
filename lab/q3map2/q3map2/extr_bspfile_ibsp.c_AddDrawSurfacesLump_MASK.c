#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ibspHeader_t ;
struct TYPE_8__ {int /*<<< orphan*/  patchHeight; int /*<<< orphan*/  patchWidth; int /*<<< orphan*/ * lightmapVecs; int /*<<< orphan*/  lightmapOrigin; int /*<<< orphan*/  lightmapHeight; int /*<<< orphan*/  lightmapWidth; int /*<<< orphan*/  lightmapY; int /*<<< orphan*/  lightmapX; int /*<<< orphan*/  lightmapNum; int /*<<< orphan*/  numIndexes; int /*<<< orphan*/  firstIndex; int /*<<< orphan*/  numVerts; int /*<<< orphan*/  firstVert; int /*<<< orphan*/  surfaceType; int /*<<< orphan*/  fogNum; int /*<<< orphan*/  shaderNum; } ;
typedef  TYPE_1__ ibspDrawSurface_t ;
typedef  int /*<<< orphan*/  bspHeader_t ;
struct TYPE_9__ {int /*<<< orphan*/  patchHeight; int /*<<< orphan*/  patchWidth; int /*<<< orphan*/ * lightmapVecs; int /*<<< orphan*/  lightmapOrigin; int /*<<< orphan*/  lightmapHeight; int /*<<< orphan*/  lightmapWidth; int /*<<< orphan*/ * lightmapY; int /*<<< orphan*/ * lightmapX; int /*<<< orphan*/ * lightmapNum; int /*<<< orphan*/  numIndexes; int /*<<< orphan*/  firstIndex; int /*<<< orphan*/  numVerts; int /*<<< orphan*/  firstVert; int /*<<< orphan*/  surfaceType; int /*<<< orphan*/  fogNum; int /*<<< orphan*/  shaderNum; } ;
typedef  TYPE_2__ bspDrawSurface_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  LUMP_SURFACES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* bspDrawSurfaces ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int numBSPDrawSurfaces ; 
 TYPE_1__* FUNC4 (int) ; 

__attribute__((used)) static void FUNC5( FILE *file, ibspHeader_t *header ){
	int i, size;
	bspDrawSurface_t    *in;
	ibspDrawSurface_t   *buffer, *out;


	/* allocate output buffer */
	size = numBSPDrawSurfaces * sizeof( *buffer );
	buffer = FUNC4( size );
	FUNC3( buffer, 0, size );

	/* convert */
	in = bspDrawSurfaces;
	out = buffer;
	for ( i = 0; i < numBSPDrawSurfaces; i++ )
	{
		out->shaderNum = in->shaderNum;
		out->fogNum = in->fogNum;
		out->surfaceType = in->surfaceType;
		out->firstVert = in->firstVert;
		out->numVerts = in->numVerts;
		out->firstIndex = in->firstIndex;
		out->numIndexes = in->numIndexes;

		out->lightmapNum = in->lightmapNum[ 0 ];
		out->lightmapX = in->lightmapX[ 0 ];
		out->lightmapY = in->lightmapY[ 0 ];
		out->lightmapWidth = in->lightmapWidth;
		out->lightmapHeight = in->lightmapHeight;

		FUNC1( in->lightmapOrigin, out->lightmapOrigin );
		FUNC1( in->lightmapVecs[ 0 ], out->lightmapVecs[ 0 ] );
		FUNC1( in->lightmapVecs[ 1 ], out->lightmapVecs[ 1 ] );
		FUNC1( in->lightmapVecs[ 2 ], out->lightmapVecs[ 2 ] );

		out->patchWidth = in->patchWidth;
		out->patchHeight = in->patchHeight;

		in++;
		out++;
	}

	/* write lump */
	FUNC0( file, (bspHeader_t*) header, LUMP_SURFACES, buffer, size );

	/* free buffer */
	FUNC2( buffer );
}