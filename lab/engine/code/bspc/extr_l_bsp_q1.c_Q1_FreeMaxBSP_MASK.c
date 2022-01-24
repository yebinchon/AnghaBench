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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ q1_allocatedbspmem ; 
 int /*<<< orphan*/ * q1_dclipnodes ; 
 int /*<<< orphan*/ * q1_dedges ; 
 int /*<<< orphan*/ * q1_dentdata ; 
 int /*<<< orphan*/ * q1_dfaces ; 
 int /*<<< orphan*/ * q1_dleafs ; 
 int /*<<< orphan*/ * q1_dlightdata ; 
 int /*<<< orphan*/ * q1_dmarksurfaces ; 
 int /*<<< orphan*/ * q1_dmodels ; 
 int /*<<< orphan*/ * q1_dnodes ; 
 int /*<<< orphan*/ * q1_dplanes ; 
 int /*<<< orphan*/ * q1_dsurfedges ; 
 int /*<<< orphan*/ * q1_dtexdata ; 
 int /*<<< orphan*/ * q1_dvertexes ; 
 int /*<<< orphan*/ * q1_dvisdata ; 
 scalar_t__ q1_entdatasize ; 
 scalar_t__ q1_lightdatasize ; 
 scalar_t__ q1_numclipnodes ; 
 scalar_t__ q1_numedges ; 
 scalar_t__ q1_numfaces ; 
 scalar_t__ q1_numleafs ; 
 scalar_t__ q1_nummarksurfaces ; 
 scalar_t__ q1_nummodels ; 
 scalar_t__ q1_numnodes ; 
 scalar_t__ q1_numplanes ; 
 scalar_t__ q1_numsurfedges ; 
 scalar_t__ q1_numtexinfo ; 
 scalar_t__ q1_numvertexes ; 
 scalar_t__ q1_texdatasize ; 
 int /*<<< orphan*/ * q1_texinfo ; 
 scalar_t__ q1_visdatasize ; 

void FUNC3(void)
{
	//models
	q1_nummodels = 0;
	FUNC0(q1_dmodels);
	q1_dmodels = NULL;
	//visibility
	q1_visdatasize = 0;
	FUNC0(q1_dvisdata);
	q1_dvisdata = NULL;
	//light data
	q1_lightdatasize = 0;
	FUNC0(q1_dlightdata);
	q1_dlightdata = NULL;
	//texture data
	q1_texdatasize = 0;
	FUNC0(q1_dtexdata);
	q1_dtexdata = NULL;
	//entities
	q1_entdatasize = 0;
	FUNC0(q1_dentdata);
	q1_dentdata = NULL;
	//leaves
	q1_numleafs = 0;
	FUNC0(q1_dleafs);
	q1_dleafs = NULL;
	//planes
	q1_numplanes = 0;
	FUNC0(q1_dplanes);
	q1_dplanes = NULL;
	//vertexes
	q1_numvertexes = 0;
	FUNC0(q1_dvertexes);
	q1_dvertexes = NULL;
	//nodes
	q1_numnodes = 0;
	FUNC0(q1_dnodes);
	q1_dnodes = NULL;
	//texture info
	q1_numtexinfo = 0;
	FUNC0(q1_texinfo);
	q1_texinfo = NULL;
	//faces
	q1_numfaces = 0;
	FUNC0(q1_dfaces);
	q1_dfaces = NULL;
	//clip nodes
	q1_numclipnodes = 0;
	FUNC0(q1_dclipnodes);
	q1_dclipnodes = NULL;
	//edges
	q1_numedges = 0;
	FUNC0(q1_dedges);
	q1_dedges = NULL;
	//mark surfaces
	q1_nummarksurfaces = 0;
	FUNC0(q1_dmarksurfaces);
	q1_dmarksurfaces = NULL;
	//surface edges
	q1_numsurfedges = 0;
	FUNC0(q1_dsurfedges);
	q1_dsurfedges = NULL;
	//
	FUNC1("freed ");
	FUNC2(q1_allocatedbspmem);
	FUNC1(" of BSP memory\n");
	q1_allocatedbspmem = 0;
}