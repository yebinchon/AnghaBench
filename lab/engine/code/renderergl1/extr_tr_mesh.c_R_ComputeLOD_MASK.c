#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_9__ ;
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_11__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct TYPE_16__ {int frame; int /*<<< orphan*/  origin; } ;
struct TYPE_18__ {TYPE_2__ e; } ;
typedef  TYPE_4__ trRefEntity_t ;
struct TYPE_19__ {size_t numBones; int ofsFrames; } ;
typedef  TYPE_5__ mdrHeader_t ;
struct TYPE_20__ {int /*<<< orphan*/ * bounds; int /*<<< orphan*/ * bones; } ;
typedef  TYPE_6__ mdrFrame_t ;
struct TYPE_21__ {int /*<<< orphan*/ * bounds; } ;
typedef  TYPE_7__ md3Frame_t ;
typedef  int /*<<< orphan*/  byte ;
struct TYPE_23__ {int (* ftol ) (float) ;} ;
struct TYPE_22__ {TYPE_3__* currentModel; } ;
struct TYPE_17__ {int numLods; scalar_t__ type; TYPE_1__** md3; scalar_t__ modelData; } ;
struct TYPE_15__ {int ofsFrames; } ;
struct TYPE_14__ {scalar_t__ integer; } ;
struct TYPE_13__ {float value; } ;

/* Variables and functions */
 scalar_t__ MOD_MDR ; 
 float FUNC0 (float,int /*<<< orphan*/ ) ; 
 float FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_11__* r_lodbias ; 
 TYPE_10__* r_lodscale ; 
 TYPE_9__ ri ; 
 int FUNC2 (float) ; 
 TYPE_8__ tr ; 

int FUNC3( trRefEntity_t *ent ) {
	float radius;
	float flod, lodscale;
	float projectedRadius;
	md3Frame_t *frame;
	mdrHeader_t *mdr;
	mdrFrame_t *mdrframe;
	int lod;

	if ( tr.currentModel->numLods < 2 )
	{
		// model has only 1 LOD level, skip computations and bias
		lod = 0;
	}
	else
	{
		// multiple LODs exist, so compute projected bounding sphere
		// and use that as a criteria for selecting LOD

		if(tr.currentModel->type == MOD_MDR)
		{
			int frameSize;
			mdr = (mdrHeader_t *) tr.currentModel->modelData;
			frameSize = (size_t) (&((mdrFrame_t *)0)->bones[mdr->numBones]);
			
			mdrframe = (mdrFrame_t *) ((byte *) mdr + mdr->ofsFrames + frameSize * ent->e.frame);
			
			radius = FUNC1(mdrframe->bounds[0], mdrframe->bounds[1]);
		}
		else
		{
			frame = ( md3Frame_t * ) ( ( ( unsigned char * ) tr.currentModel->md3[0] ) + tr.currentModel->md3[0]->ofsFrames );

			frame += ent->e.frame;

			radius = FUNC1( frame->bounds[0], frame->bounds[1] );
		}

		if ( ( projectedRadius = FUNC0( radius, ent->e.origin ) ) != 0 )
		{
			lodscale = r_lodscale->value;
			if (lodscale > 20) lodscale = 20;
			flod = 1.0f - projectedRadius * lodscale;
		}
		else
		{
			// object intersects near view plane, e.g. view weapon
			flod = 0;
		}

		flod *= tr.currentModel->numLods;
		lod = ri.ftol(flod);

		if ( lod < 0 )
		{
			lod = 0;
		}
		else if ( lod >= tr.currentModel->numLods )
		{
			lod = tr.currentModel->numLods - 1;
		}
	}

	lod += r_lodbias->integer;
	
	if ( lod >= tr.currentModel->numLods )
		lod = tr.currentModel->numLods - 1;
	if ( lod < 0 )
		lod = 0;

	return lod;
}