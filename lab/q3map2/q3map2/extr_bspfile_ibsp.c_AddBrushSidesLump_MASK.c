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
struct TYPE_8__ {int /*<<< orphan*/  shaderNum; int /*<<< orphan*/  planeNum; } ;
typedef  TYPE_1__ ibspBrushSide_t ;
typedef  int /*<<< orphan*/  bspHeader_t ;
struct TYPE_9__ {int /*<<< orphan*/  shaderNum; int /*<<< orphan*/  planeNum; } ;
typedef  TYPE_2__ bspBrushSide_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  LUMP_BRUSHSIDES ; 
 TYPE_2__* bspBrushSides ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int numBSPBrushSides ; 
 TYPE_1__* FUNC3 (int) ; 

__attribute__((used)) static void FUNC4( FILE *file, ibspHeader_t *header ){
	int i, size;
	bspBrushSide_t  *in;
	ibspBrushSide_t *buffer, *out;


	/* allocate output buffer */
	size = numBSPBrushSides * sizeof( *buffer );
	buffer = FUNC3( size );
	FUNC2( buffer, 0, size );

	/* convert */
	in = bspBrushSides;
	out = buffer;
	for ( i = 0; i < numBSPBrushSides; i++ )
	{
		out->planeNum = in->planeNum;
		out->shaderNum = in->shaderNum;
		in++;
		out++;
	}

	/* write lump */
	FUNC0( file, (bspHeader_t*) header, LUMP_BRUSHSIDES, buffer, size );

	/* free buffer */
	FUNC1( buffer );
}