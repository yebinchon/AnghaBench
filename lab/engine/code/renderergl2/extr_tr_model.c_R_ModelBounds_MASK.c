#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
typedef  int /*<<< orphan*/  qhandle_t ;
struct TYPE_10__ {scalar_t__ type; TYPE_7__* modelData; TYPE_3__** mdv; TYPE_1__* bmodel; } ;
typedef  TYPE_2__ model_t ;
struct TYPE_11__ {TYPE_4__* frames; } ;
typedef  TYPE_3__ mdvModel_t ;
struct TYPE_12__ {scalar_t__* bounds; } ;
typedef  TYPE_4__ mdvFrame_t ;
struct TYPE_13__ {int ofsFrames; } ;
typedef  TYPE_5__ mdrHeader_t ;
struct TYPE_14__ {scalar_t__* bounds; } ;
typedef  TYPE_6__ mdrFrame_t ;
struct TYPE_15__ {scalar_t__ bounds; } ;
typedef  TYPE_7__ iqmData_t ;
typedef  int /*<<< orphan*/  byte ;
struct TYPE_9__ {scalar_t__* bounds; } ;

/* Variables and functions */
 scalar_t__ MOD_BRUSH ; 
 scalar_t__ MOD_IQM ; 
 scalar_t__ MOD_MDR ; 
 scalar_t__ MOD_MESH ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC3( qhandle_t handle, vec3_t mins, vec3_t maxs ) {
	model_t		*model;

	model = FUNC0( handle );

	if(model->type == MOD_BRUSH) {
		FUNC2( model->bmodel->bounds[0], mins );
		FUNC2( model->bmodel->bounds[1], maxs );
		
		return;
	} else if (model->type == MOD_MESH) {
		mdvModel_t	*header;
		mdvFrame_t	*frame;

		header = model->mdv[0];
		frame = header->frames;

		FUNC2( frame->bounds[0], mins );
		FUNC2( frame->bounds[1], maxs );
		
		return;
	} else if (model->type == MOD_MDR) {
		mdrHeader_t	*header;
		mdrFrame_t	*frame;

		header = (mdrHeader_t *)model->modelData;
		frame = (mdrFrame_t *) ((byte *)header + header->ofsFrames);

		FUNC2( frame->bounds[0], mins );
		FUNC2( frame->bounds[1], maxs );
		
		return;
	} else if(model->type == MOD_IQM) {
		iqmData_t *iqmData;
		
		iqmData = model->modelData;

		if(iqmData->bounds)
		{
			FUNC2(iqmData->bounds, mins);
			FUNC2(iqmData->bounds + 3, maxs);
			return;
		}
	}

	FUNC1( mins );
	FUNC1( maxs );
}