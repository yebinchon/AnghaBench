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
 scalar_t__ allocatedbspmem ; 
 int /*<<< orphan*/ * dareaportals ; 
 int /*<<< orphan*/ * dareas ; 
 int /*<<< orphan*/ * dbrushes ; 
 int /*<<< orphan*/ * dbrushsides ; 
 int /*<<< orphan*/ * dedges ; 
 int /*<<< orphan*/ * dentdata ; 
 int /*<<< orphan*/ * dfaces ; 
 int /*<<< orphan*/ * dleafbrushes ; 
 int /*<<< orphan*/ * dleaffaces ; 
 int /*<<< orphan*/ * dleafs ; 
 int /*<<< orphan*/ * dlightdata ; 
 int /*<<< orphan*/ * dmodels ; 
 int /*<<< orphan*/ * dnodes ; 
 int /*<<< orphan*/ * dplanes ; 
 int /*<<< orphan*/ * dsurfedges ; 
 int /*<<< orphan*/ * dvertexes ; 
 int /*<<< orphan*/ * dvis ; 
 int /*<<< orphan*/ * dvisdata ; 
 scalar_t__ entdatasize ; 
 scalar_t__ lightdatasize ; 
 scalar_t__ numareaportals ; 
 scalar_t__ numareas ; 
 scalar_t__ numbrushes ; 
 scalar_t__ numbrushsides ; 
 scalar_t__ numedges ; 
 scalar_t__ numfaces ; 
 scalar_t__ numleafbrushes ; 
 scalar_t__ numleaffaces ; 
 scalar_t__ numleafs ; 
 scalar_t__ nummodels ; 
 scalar_t__ numnodes ; 
 scalar_t__ numplanes ; 
 scalar_t__ numsurfedges ; 
 scalar_t__ numvertexes ; 
 scalar_t__ visdatasize ; 

void FUNC3(void)
{
	//models
	nummodels = 0;
	FUNC0(dmodels);
	dmodels = NULL;
	//vis data
	visdatasize = 0;
	FUNC0(dvisdata);
	dvisdata = NULL;
	dvis = NULL;
	//light data
	lightdatasize = 0;
	FUNC0(dlightdata);
	dlightdata = NULL;
	//entity data
	entdatasize = 0;
	FUNC0(dentdata);
	dentdata = NULL;
	//leafs
	numleafs = 0;
	FUNC0(dleafs);
	dleafs = NULL;
	//planes
	numplanes = 0;
	FUNC0(dplanes);
	dplanes = NULL;
	//vertexes
	numvertexes = 0;
	FUNC0(dvertexes);
	dvertexes = NULL;
	//nodes
	numnodes = 0;
	FUNC0(dnodes);
	dnodes = NULL;
	/*
	//texture info
	numtexinfo = 0;
	FreeMemory(texinfo);
	texinfo = NULL;
	//*/
	//faces
	numfaces = 0;
	FUNC0(dfaces);
	dfaces = NULL;
	//edges
	numedges = 0;
	FUNC0(dedges);
	dedges = NULL;
	//leaf faces
	numleaffaces = 0;
	FUNC0(dleaffaces);
	dleaffaces = NULL;
	//leaf brushes
	numleafbrushes = 0;
	FUNC0(dleafbrushes);
	dleafbrushes = NULL;
	//surface edges
	numsurfedges = 0;
	FUNC0(dsurfedges);
	dsurfedges = NULL;
	//brushes
	numbrushes = 0;
	FUNC0(dbrushes);
	dbrushes = NULL;
	//brushsides
	numbrushsides = 0;
	FUNC0(dbrushsides);
	dbrushsides = NULL;
	//areas
	numareas = 0;
	FUNC0(dareas);
	dareas = NULL;
	//area portals
	numareaportals = 0;
	FUNC0(dareaportals);
	dareaportals = NULL;
	//
	FUNC1("freed ");
	FUNC2(allocatedbspmem);
	FUNC1(" of BSP memory\n");
	allocatedbspmem = 0;
}