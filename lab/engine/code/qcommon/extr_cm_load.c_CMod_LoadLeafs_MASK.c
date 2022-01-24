#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int filelen; scalar_t__ fileofs; } ;
typedef  TYPE_1__ lump_t ;
struct TYPE_7__ {int /*<<< orphan*/  numLeafSurfaces; int /*<<< orphan*/  firstLeafSurface; int /*<<< orphan*/  numLeafBrushes; int /*<<< orphan*/  firstLeafBrush; int /*<<< orphan*/  area; int /*<<< orphan*/  cluster; } ;
typedef  TYPE_2__ dleaf_t ;
struct TYPE_8__ {scalar_t__ cluster; int area; void* numLeafSurfaces; void* firstLeafSurface; void* numLeafBrushes; void* firstLeafBrush; } ;
typedef  TYPE_3__ cLeaf_t ;
struct TYPE_9__ {int numLeafs; scalar_t__ numClusters; int numAreas; void* areaPortals; void* areas; TYPE_3__* leafs; } ;

/* Variables and functions */
 int BOX_LEAFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_4__ cm ; 
 scalar_t__ cmod_base ; 
 int /*<<< orphan*/  h_high ; 

void FUNC3 (lump_t *l)
{
	int			i;
	cLeaf_t		*out;
	dleaf_t 	*in;
	int			count;
	
	in = (void *)(cmod_base + l->fileofs);
	if (l->filelen % sizeof(*in))
		FUNC0 (ERR_DROP, "MOD_LoadBmodel: funny lump size");
	count = l->filelen / sizeof(*in);

	if (count < 1)
		FUNC0 (ERR_DROP, "Map with no leafs");

	cm.leafs = FUNC1( ( BOX_LEAFS + count ) * sizeof( *cm.leafs ), h_high );
	cm.numLeafs = count;

	out = cm.leafs;	
	for ( i=0 ; i<count ; i++, in++, out++)
	{
		out->cluster = FUNC2 (in->cluster);
		out->area = FUNC2 (in->area);
		out->firstLeafBrush = FUNC2 (in->firstLeafBrush);
		out->numLeafBrushes = FUNC2 (in->numLeafBrushes);
		out->firstLeafSurface = FUNC2 (in->firstLeafSurface);
		out->numLeafSurfaces = FUNC2 (in->numLeafSurfaces);

		if (out->cluster >= cm.numClusters)
			cm.numClusters = out->cluster + 1;
		if (out->area >= cm.numAreas)
			cm.numAreas = out->area + 1;
	}

	cm.areas = FUNC1( cm.numAreas * sizeof( *cm.areas ), h_high );
	cm.areaPortals = FUNC1( cm.numAreas * cm.numAreas * sizeof( *cm.areaPortals ), h_high );
}