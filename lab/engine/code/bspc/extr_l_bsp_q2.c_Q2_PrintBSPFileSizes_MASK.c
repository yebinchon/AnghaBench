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
typedef  int /*<<< orphan*/  texinfo_t ;
typedef  int /*<<< orphan*/  dvertex_t ;
typedef  int /*<<< orphan*/  dsurfedges ;
typedef  int /*<<< orphan*/  dplane_t ;
typedef  int /*<<< orphan*/  dnode_t ;
typedef  int /*<<< orphan*/  dmodel_t ;
typedef  int /*<<< orphan*/  dleaffaces ;
typedef  int /*<<< orphan*/  dleafbrushes ;
typedef  int /*<<< orphan*/  dleaf_t ;
typedef  int /*<<< orphan*/  dface_t ;
typedef  int /*<<< orphan*/  dedge_t ;
typedef  int /*<<< orphan*/  dbrushside_t ;
typedef  int /*<<< orphan*/  dbrush_t ;
typedef  int /*<<< orphan*/  dareaportal_t ;
typedef  int /*<<< orphan*/  darea_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int entdatasize ; 
 int lightdatasize ; 
 int num_entities ; 
 int numareaportals ; 
 int numareas ; 
 int numbrushes ; 
 int numbrushsides ; 
 int numedges ; 
 int numfaces ; 
 int numleafbrushes ; 
 int numleaffaces ; 
 int numleafs ; 
 int nummodels ; 
 int numnodes ; 
 int numplanes ; 
 int numsurfedges ; 
 int numtexinfo ; 
 int numvertexes ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int visdatasize ; 

void FUNC2 (void)
{
	if (!num_entities)
		FUNC0();

	FUNC1 ("%6i models       %7i\n"
		,nummodels, (int)(nummodels*sizeof(dmodel_t)));
	FUNC1 ("%6i brushes      %7i\n"
		,numbrushes, (int)(numbrushes*sizeof(dbrush_t)));
	FUNC1 ("%6i brushsides   %7i\n"
		,numbrushsides, (int)(numbrushsides*sizeof(dbrushside_t)));
	FUNC1 ("%6i planes       %7i\n"
		,numplanes, (int)(numplanes*sizeof(dplane_t)));
	FUNC1 ("%6i texinfo      %7i\n"
		,numtexinfo, (int)(numtexinfo*sizeof(texinfo_t)));
	FUNC1 ("%6i entdata      %7i\n", num_entities, entdatasize);

	FUNC1 ("\n");

	FUNC1 ("%6i vertexes     %7i\n"
		,numvertexes, (int)(numvertexes*sizeof(dvertex_t)));
	FUNC1 ("%6i nodes        %7i\n"
		,numnodes, (int)(numnodes*sizeof(dnode_t)));
	FUNC1 ("%6i faces        %7i\n"
		,numfaces, (int)(numfaces*sizeof(dface_t)));
	FUNC1 ("%6i leafs        %7i\n"
		,numleafs, (int)(numleafs*sizeof(dleaf_t)));
	FUNC1 ("%6i leaffaces    %7i\n"
		,numleaffaces, (int)(numleaffaces*sizeof(dleaffaces[0])));
	FUNC1 ("%6i leafbrushes  %7i\n"
		,numleafbrushes, (int)(numleafbrushes*sizeof(dleafbrushes[0])));
	FUNC1 ("%6i surfedges    %7i\n"
		,numsurfedges, (int)(numsurfedges*sizeof(dsurfedges[0])));
	FUNC1 ("%6i edges        %7i\n"
		,numedges, (int)(numedges*sizeof(dedge_t)));
//NEW
	FUNC1 ("%6i areas        %7i\n"
		,numareas, (int)(numareas*sizeof(darea_t)));
	FUNC1 ("%6i areaportals  %7i\n"
		,numareaportals, (int)(numareaportals*sizeof(dareaportal_t)));
//ENDNEW
	FUNC1 ("      lightdata    %7i\n", lightdatasize);
	FUNC1 ("      visdata      %7i\n", visdatasize);
}