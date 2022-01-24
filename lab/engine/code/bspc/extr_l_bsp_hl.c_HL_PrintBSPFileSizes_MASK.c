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
typedef  int /*<<< orphan*/  hl_dvisdata ;
typedef  int /*<<< orphan*/  hl_dtexdata ;
typedef  int /*<<< orphan*/  hl_dlightdata ;
typedef  int /*<<< orphan*/  hl_dentdata ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  hl_dclipnodes ; 
 int /*<<< orphan*/  hl_dedges ; 
 int /*<<< orphan*/  hl_dfaces ; 
 int /*<<< orphan*/  hl_dleafs ; 
 int /*<<< orphan*/  hl_dmarksurfaces ; 
 int /*<<< orphan*/  hl_dmodels ; 
 int /*<<< orphan*/  hl_dnodes ; 
 int /*<<< orphan*/  hl_dplanes ; 
 int /*<<< orphan*/  hl_dsurfedges ; 
 int /*<<< orphan*/  hl_dvertexes ; 
 int /*<<< orphan*/  hl_entdatasize ; 
 int /*<<< orphan*/  hl_lightdatasize ; 
 int /*<<< orphan*/  hl_numclipnodes ; 
 int /*<<< orphan*/  hl_numedges ; 
 int /*<<< orphan*/  hl_numfaces ; 
 int /*<<< orphan*/  hl_numleafs ; 
 int /*<<< orphan*/  hl_nummarksurfaces ; 
 int /*<<< orphan*/  hl_nummodels ; 
 int /*<<< orphan*/  hl_numnodes ; 
 int /*<<< orphan*/  hl_numplanes ; 
 int /*<<< orphan*/  hl_numsurfedges ; 
 int /*<<< orphan*/  hl_numtexinfo ; 
 int /*<<< orphan*/  hl_numvertexes ; 
 int /*<<< orphan*/  hl_texdatasize ; 
 int /*<<< orphan*/  hl_texinfo ; 
 int /*<<< orphan*/  hl_visdatasize ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

void FUNC5(void)
{
	int	totalmemory = 0;

	FUNC4("\n");
	FUNC4("Object names  Objects/Maxobjs  Memory / Maxmem  Fullness\n" );
	FUNC4("------------  ---------------  ---------------  --------\n" );

	totalmemory += FUNC0( "models",		hl_nummodels,		FUNC1(hl_dmodels),		FUNC2(hl_dmodels) );
	totalmemory += FUNC0( "planes",		hl_numplanes,		FUNC1(hl_dplanes),		FUNC2(hl_dplanes) );
	totalmemory += FUNC0( "vertexes",		hl_numvertexes,	FUNC1(hl_dvertexes),	FUNC2(hl_dvertexes) );
	totalmemory += FUNC0( "nodes",			hl_numnodes,		FUNC1(hl_dnodes),		FUNC2(hl_dnodes) );
	totalmemory += FUNC0( "texinfos",		hl_numtexinfo,		FUNC1(hl_texinfo),		FUNC2(hl_texinfo) );
	totalmemory += FUNC0( "faces",			hl_numfaces,		FUNC1(hl_dfaces),		FUNC2(hl_dfaces) );
	totalmemory += FUNC0( "clipnodes",	hl_numclipnodes,	FUNC1(hl_dclipnodes),	FUNC2(hl_dclipnodes) );
	totalmemory += FUNC0( "leaves",		hl_numleafs,		FUNC1(hl_dleafs),		FUNC2(hl_dleafs) );
	totalmemory += FUNC0( "marksurfaces",hl_nummarksurfaces,FUNC1(hl_dmarksurfaces),FUNC2(hl_dmarksurfaces) );
	totalmemory += FUNC0( "surfedges",	hl_numsurfedges,	FUNC1(hl_dsurfedges),	FUNC2(hl_dsurfedges) );
	totalmemory += FUNC0( "edges",			hl_numedges,		FUNC1(hl_dedges),		FUNC2(hl_dedges) );

	totalmemory += FUNC3( "texdata",		hl_texdatasize,	sizeof(hl_dtexdata) );
	totalmemory += FUNC3( "lightdata",		hl_lightdatasize,	sizeof(hl_dlightdata) );
	totalmemory += FUNC3( "visdata",		hl_visdatasize,	sizeof(hl_dvisdata) );
	totalmemory += FUNC3( "entdata",		hl_entdatasize,	sizeof(hl_dentdata) );

	FUNC4( "=== Total BSP file data space used: %d bytes ===\n\n", totalmemory );
}