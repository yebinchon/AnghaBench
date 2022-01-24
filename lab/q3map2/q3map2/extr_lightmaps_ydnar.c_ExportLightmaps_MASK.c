#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  byte ;
struct TYPE_2__ {int lightmapSize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SYS_VRB ; 
 int /*<<< orphan*/  SYS_WRN ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * bspLightBytes ; 
 TYPE_1__* game ; 
 int numBSPLightBytes ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  source ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

void FUNC7( void ){
	int i;
	char dirname[ 1024 ], filename[ 1024 ];
	byte        *lightmap;


	/* note it */
	FUNC2( SYS_VRB, "--- ExportLightmaps ---\n" );

	/* do some path mangling */
	FUNC6( dirname, source );
	FUNC1( dirname );

	/* sanity check */
	if ( bspLightBytes == NULL ) {
		FUNC2( SYS_WRN, "WARNING: No BSP lightmap data\n" );
		return;
	}

	/* make a directory for the lightmaps */
	FUNC0( dirname );

	/* iterate through the lightmaps */
	for ( i = 0, lightmap = bspLightBytes; lightmap < ( bspLightBytes + numBSPLightBytes ); i++, lightmap += ( game->lightmapSize * game->lightmapSize * 3 ) )
	{
		/* write a tga image out */
		FUNC5( filename, "%s/lightmap_%04d.tga", dirname, i );
		FUNC3( "Writing %s\n", filename );
		FUNC4( filename, lightmap, game->lightmapSize, game->lightmapSize, qfalse );
	}
}