#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_9__ ;
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ qboolean ;
struct TYPE_14__ {int* headnode; int visleafs; int firstface; int numfaces; void** origin; void** maxs; void** mins; } ;
typedef  TYPE_1__ q1_dmodel_t ;
struct TYPE_15__ {int nummiptex; int* dataofs; } ;
typedef  TYPE_2__ q1_dmiptexlump_t ;
struct TYPE_21__ {int lightofs; int firstedge; void* numedges; void* side; void* planenum; void* texinfo; } ;
struct TYPE_20__ {int contents; int visofs; void* nummarksurfaces; void* firstmarksurface; void** maxs; void** mins; } ;
struct TYPE_19__ {int planenum; void* numfaces; void* firstface; void** children; void** maxs; void** mins; } ;
struct TYPE_18__ {int type; void* dist; void** normal; } ;
struct TYPE_17__ {void** point; } ;
struct TYPE_16__ {int miptex; int flags; void*** vecs; } ;
struct TYPE_13__ {int planenum; void** children; } ;
struct TYPE_12__ {void** v; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (void*) ; 
 int Q1_MAX_MAP_HULLS ; 
 TYPE_11__* q1_dclipnodes ; 
 TYPE_10__* q1_dedges ; 
 TYPE_9__* q1_dfaces ; 
 TYPE_8__* q1_dleafs ; 
 void** q1_dmarksurfaces ; 
 TYPE_1__* q1_dmodels ; 
 TYPE_6__* q1_dnodes ; 
 TYPE_5__* q1_dplanes ; 
 int* q1_dsurfedges ; 
 scalar_t__ q1_dtexdata ; 
 TYPE_4__* q1_dvertexes ; 
 int q1_numclipnodes ; 
 int q1_numedges ; 
 int q1_numfaces ; 
 int q1_numleafs ; 
 int q1_nummarksurfaces ; 
 int q1_nummodels ; 
 int q1_numnodes ; 
 int q1_numplanes ; 
 int q1_numsurfedges ; 
 int q1_numtexinfo ; 
 int q1_numvertexes ; 
 scalar_t__ q1_texdatasize ; 
 TYPE_3__* q1_texinfo ; 

void FUNC3 (qboolean todisk)
{
	int i, j, k, c;
	q1_dmodel_t *d;
	q1_dmiptexlump_t *mtl;

	
// models	
	for (i=0 ; i<q1_nummodels ; i++)
	{
		d = &q1_dmodels[i];

		for (j=0 ; j<Q1_MAX_MAP_HULLS ; j++)
			d->headnode[j] = FUNC1 (d->headnode[j]);

		d->visleafs = FUNC1 (d->visleafs);
		d->firstface = FUNC1 (d->firstface);
		d->numfaces = FUNC1 (d->numfaces);
		
		for (j=0 ; j<3 ; j++)
		{
			d->mins[j] = FUNC0(d->mins[j]);
			d->maxs[j] = FUNC0(d->maxs[j]);
			d->origin[j] = FUNC0(d->origin[j]);
		}
	}

//
// vertexes
//
	for (i=0 ; i<q1_numvertexes ; i++)
	{
		for (j=0 ; j<3 ; j++)
			q1_dvertexes[i].point[j] = FUNC0(q1_dvertexes[i].point[j]);
	}
		
//
// planes
//	
	for (i=0 ; i<q1_numplanes ; i++)
	{
		for (j=0 ; j<3 ; j++)
			q1_dplanes[i].normal[j] = FUNC0(q1_dplanes[i].normal[j]);
		q1_dplanes[i].dist = FUNC0(q1_dplanes[i].dist);
		q1_dplanes[i].type = FUNC1(q1_dplanes[i].type);
	}
	
//
// texinfos
//	
	for (i=0 ; i<q1_numtexinfo ; i++)
	{
		for (j=0 ; j<2 ; j++)
		{
			for (k=0; k<4; k++)
			{
				q1_texinfo[i].vecs[j][k] = FUNC0 (q1_texinfo[i].vecs[j][k]);
			}
		}
		q1_texinfo[i].miptex = FUNC1(q1_texinfo[i].miptex);
		q1_texinfo[i].flags = FUNC1(q1_texinfo[i].flags);
	}
	
//
// faces
//
	for (i=0 ; i<q1_numfaces ; i++)
	{
		q1_dfaces[i].texinfo = FUNC2(q1_dfaces[i].texinfo);
		q1_dfaces[i].planenum = FUNC2(q1_dfaces[i].planenum);
		q1_dfaces[i].side = FUNC2(q1_dfaces[i].side);
		q1_dfaces[i].lightofs = FUNC1(q1_dfaces[i].lightofs);
		q1_dfaces[i].firstedge = FUNC1(q1_dfaces[i].firstedge);
		q1_dfaces[i].numedges = FUNC2(q1_dfaces[i].numedges);
	}

//
// nodes
//
	for (i=0 ; i<q1_numnodes ; i++)
	{
		q1_dnodes[i].planenum = FUNC1(q1_dnodes[i].planenum);
		for (j=0 ; j<3 ; j++)
		{
			q1_dnodes[i].mins[j] = FUNC2(q1_dnodes[i].mins[j]);
			q1_dnodes[i].maxs[j] = FUNC2(q1_dnodes[i].maxs[j]);
		}
		q1_dnodes[i].children[0] = FUNC2(q1_dnodes[i].children[0]);
		q1_dnodes[i].children[1] = FUNC2(q1_dnodes[i].children[1]);
		q1_dnodes[i].firstface = FUNC2(q1_dnodes[i].firstface);
		q1_dnodes[i].numfaces = FUNC2(q1_dnodes[i].numfaces);
	}

//
// leafs
//
	for (i=0 ; i<q1_numleafs ; i++)
	{
		q1_dleafs[i].contents = FUNC1(q1_dleafs[i].contents);
		for (j=0 ; j<3 ; j++)
		{
			q1_dleafs[i].mins[j] = FUNC2(q1_dleafs[i].mins[j]);
			q1_dleafs[i].maxs[j] = FUNC2(q1_dleafs[i].maxs[j]);
		}

		q1_dleafs[i].firstmarksurface = FUNC2(q1_dleafs[i].firstmarksurface);
		q1_dleafs[i].nummarksurfaces = FUNC2(q1_dleafs[i].nummarksurfaces);
		q1_dleafs[i].visofs = FUNC1(q1_dleafs[i].visofs);
	}

//
// clipnodes
//
	for (i=0 ; i<q1_numclipnodes ; i++)
	{
		q1_dclipnodes[i].planenum = FUNC1(q1_dclipnodes[i].planenum);
		q1_dclipnodes[i].children[0] = FUNC2(q1_dclipnodes[i].children[0]);
		q1_dclipnodes[i].children[1] = FUNC2(q1_dclipnodes[i].children[1]);
	}

//
// miptex
//
	if (q1_texdatasize)
	{
		mtl = (q1_dmiptexlump_t *)q1_dtexdata;
		if (todisk)
			c = mtl->nummiptex;
		else
			c = FUNC1(mtl->nummiptex);
		mtl->nummiptex = FUNC1 (mtl->nummiptex);
		for (i=0 ; i<c ; i++)
			mtl->dataofs[i] = FUNC1(mtl->dataofs[i]);
	}
	
//
// marksurfaces
//
	for (i=0 ; i<q1_nummarksurfaces ; i++)
		q1_dmarksurfaces[i] = FUNC2(q1_dmarksurfaces[i]);

//
// surfedges
//
	for (i=0 ; i<q1_numsurfedges ; i++)
		q1_dsurfedges[i] = FUNC1(q1_dsurfedges[i]);

//
// edges
//
	for (i=0 ; i<q1_numedges ; i++)
	{
		q1_dedges[i].v[0] = FUNC2(q1_dedges[i].v[0]);
		q1_dedges[i].v[1] = FUNC2(q1_dedges[i].v[1]);
	}
}