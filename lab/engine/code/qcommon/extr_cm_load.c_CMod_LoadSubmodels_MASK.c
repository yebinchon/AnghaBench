#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int filelen; scalar_t__ fileofs; } ;
typedef  TYPE_2__ lump_t ;
struct TYPE_9__ {int /*<<< orphan*/  firstSurface; int /*<<< orphan*/  numSurfaces; int /*<<< orphan*/  firstBrush; int /*<<< orphan*/  numBrushes; int /*<<< orphan*/ * maxs; int /*<<< orphan*/ * mins; } ;
typedef  TYPE_3__ dmodel_t ;
struct TYPE_7__ {int numLeafBrushes; int* firstLeafBrush; int numLeafSurfaces; int* firstLeafSurface; } ;
struct TYPE_10__ {TYPE_1__ leaf; void** maxs; void** mins; } ;
typedef  TYPE_4__ cmodel_t ;
struct TYPE_11__ {int numSubModels; int leafbrushes; int leafsurfaces; TYPE_4__* cmodels; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int MAX_SUBMODELS ; 
 TYPE_5__ cm ; 
 scalar_t__ cmod_base ; 
 int /*<<< orphan*/  h_high ; 

void FUNC4( lump_t *l ) {
	dmodel_t	*in;
	cmodel_t	*out;
	int			i, j, count;
	int			*indexes;

	in = (void *)(cmod_base + l->fileofs);
	if (l->filelen % sizeof(*in))
		FUNC0 (ERR_DROP, "CMod_LoadSubmodels: funny lump size");
	count = l->filelen / sizeof(*in);

	if (count < 1)
		FUNC0 (ERR_DROP, "Map with no models");
	cm.cmodels = FUNC1( count * sizeof( *cm.cmodels ), h_high );
	cm.numSubModels = count;

	if ( count > MAX_SUBMODELS ) {
		FUNC0( ERR_DROP, "MAX_SUBMODELS exceeded" );
	}

	for ( i=0 ; i<count ; i++, in++)
	{
		out = &cm.cmodels[i];

		for (j=0 ; j<3 ; j++)
		{	// spread the mins / maxs by a pixel
			out->mins[j] = FUNC2 (in->mins[j]) - 1;
			out->maxs[j] = FUNC2 (in->maxs[j]) + 1;
		}

		if ( i == 0 ) {
			continue;	// world model doesn't need other info
		}

		// make a "leaf" just to hold the model's brushes and surfaces
		out->leaf.numLeafBrushes = FUNC3( in->numBrushes );
		indexes = FUNC1( out->leaf.numLeafBrushes * 4, h_high );
		out->leaf.firstLeafBrush = indexes - cm.leafbrushes;
		for ( j = 0 ; j < out->leaf.numLeafBrushes ; j++ ) {
			indexes[j] = FUNC3( in->firstBrush ) + j;
		}

		out->leaf.numLeafSurfaces = FUNC3( in->numSurfaces );
		indexes = FUNC1( out->leaf.numLeafSurfaces * 4, h_high );
		out->leaf.firstLeafSurface = indexes - cm.leafsurfaces;
		for ( j = 0 ; j < out->leaf.numLeafSurfaces ; j++ ) {
			indexes[j] = FUNC3( in->firstSurface ) + j;
		}
	}
}