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
typedef  int /*<<< orphan*/  dshader_t ;
typedef  int /*<<< orphan*/  drawVerts ;
typedef  int /*<<< orphan*/  drawSurfaces ;
typedef  int /*<<< orphan*/  drawIndexes ;
typedef  int /*<<< orphan*/  dplane_t ;
typedef  int /*<<< orphan*/  dnode_t ;
typedef  int /*<<< orphan*/  dmodel_t ;
typedef  int /*<<< orphan*/  dleafsurfaces ;
typedef  int /*<<< orphan*/  dleafbrushes ;
typedef  int /*<<< orphan*/  dleaf_t ;
typedef  int /*<<< orphan*/  dfog_t ;
typedef  int /*<<< orphan*/  dbrushside_t ;
typedef  int /*<<< orphan*/  dbrush_t ;

/* Variables and functions */
 int LIGHTMAP_HEIGHT ; 
 int LIGHTMAP_WIDTH ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  entdatasize ; 
 int numDrawIndexes ; 
 int numDrawSurfaces ; 
 int numDrawVerts ; 
 int numFogs ; 
 int numLightBytes ; 
 int numShaders ; 
 int /*<<< orphan*/  numVisBytes ; 
 int /*<<< orphan*/  num_entities ; 
 int numbrushes ; 
 int numbrushsides ; 
 int numleafbrushes ; 
 int numleafs ; 
 int numleafsurfaces ; 
 int nummodels ; 
 int numnodes ; 
 int numplanes ; 

void FUNC2( void ) {
	if ( !num_entities ) {
		FUNC0();
	}

	FUNC1( "%6i models       %7i\n"
				,nummodels, (int)( nummodels * sizeof( dmodel_t ) ) );
	FUNC1( "%6i shaders      %7i\n"
				,numShaders, (int)( numShaders * sizeof( dshader_t ) ) );
	FUNC1( "%6i brushes      %7i\n"
				,numbrushes, (int)( numbrushes * sizeof( dbrush_t ) ) );
	FUNC1( "%6i brushsides   %7i\n"
				,numbrushsides, (int)( numbrushsides * sizeof( dbrushside_t ) ) );
	FUNC1( "%6i fogs         %7i\n"
				,numFogs, (int)( numFogs * sizeof( dfog_t ) ) );
	FUNC1( "%6i planes       %7i\n"
				,numplanes, (int)( numplanes * sizeof( dplane_t ) ) );
	FUNC1( "%6i entdata      %7i\n", num_entities, entdatasize );

	FUNC1( "\n" );

	FUNC1( "%6i nodes        %7i\n"
				,numnodes, (int)( numnodes * sizeof( dnode_t ) ) );
	FUNC1( "%6i leafs        %7i\n"
				,numleafs, (int)( numleafs * sizeof( dleaf_t ) ) );
	FUNC1( "%6i leafsurfaces %7i\n"
				,numleafsurfaces, (int)( numleafsurfaces * sizeof( dleafsurfaces[0] ) ) );
	FUNC1( "%6i leafbrushes  %7i\n"
				,numleafbrushes, (int)( numleafbrushes * sizeof( dleafbrushes[0] ) ) );
	FUNC1( "%6i drawverts    %7i\n"
				,numDrawVerts, (int)( numDrawVerts * sizeof( drawVerts[0] ) ) );
	FUNC1( "%6i drawindexes  %7i\n"
				,numDrawIndexes, (int)( numDrawIndexes * sizeof( drawIndexes[0] ) ) );
	FUNC1( "%6i drawsurfaces %7i\n"
				,numDrawSurfaces, (int)( numDrawSurfaces * sizeof( drawSurfaces[0] ) ) );

	FUNC1( "%6i lightmaps    %7i\n"
				,numLightBytes / ( LIGHTMAP_WIDTH * LIGHTMAP_HEIGHT * 3 ), numLightBytes );
	FUNC1( "       visibility   %7i\n"
				, numVisBytes );
}