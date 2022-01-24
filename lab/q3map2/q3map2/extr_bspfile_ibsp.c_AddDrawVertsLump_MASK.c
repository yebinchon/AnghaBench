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
struct TYPE_8__ {int /*<<< orphan*/ * color; int /*<<< orphan*/  normal; int /*<<< orphan*/ * lightmap; int /*<<< orphan*/ * st; int /*<<< orphan*/  xyz; } ;
typedef  TYPE_1__ ibspDrawVert_t ;
typedef  int /*<<< orphan*/  bspHeader_t ;
struct TYPE_9__ {int /*<<< orphan*/ ** color; int /*<<< orphan*/  normal; int /*<<< orphan*/ ** lightmap; int /*<<< orphan*/ * st; int /*<<< orphan*/  xyz; } ;
typedef  TYPE_2__ bspDrawVert_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  LUMP_DRAWVERTS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* bspDrawVerts ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int numBSPDrawVerts ; 
 TYPE_1__* FUNC4 (int) ; 

__attribute__((used)) static void FUNC5( FILE *file, ibspHeader_t *header ){
	int i, size;
	bspDrawVert_t   *in;
	ibspDrawVert_t  *buffer, *out;


	/* allocate output buffer */
	size = numBSPDrawVerts * sizeof( *buffer );
	buffer = FUNC4( size );
	FUNC3( buffer, 0, size );

	/* convert */
	in = bspDrawVerts;
	out = buffer;
	for ( i = 0; i < numBSPDrawVerts; i++ )
	{
		FUNC1( in->xyz, out->xyz );
		out->st[ 0 ] = in->st[ 0 ];
		out->st[ 1 ] = in->st[ 1 ];

		out->lightmap[ 0 ] = in->lightmap[ 0 ][ 0 ];
		out->lightmap[ 1 ] = in->lightmap[ 0 ][ 1 ];

		FUNC1( in->normal, out->normal );

		out->color[ 0 ] = in->color[ 0 ][ 0 ];
		out->color[ 1 ] = in->color[ 0 ][ 1 ];
		out->color[ 2 ] = in->color[ 0 ][ 2 ];
		out->color[ 3 ] = in->color[ 0 ][ 3 ];

		in++;
		out++;
	}

	/* write lump */
	FUNC0( file, (bspHeader_t*) header, LUMP_DRAWVERTS, buffer, size );

	/* free buffer */
	FUNC2( buffer );
}