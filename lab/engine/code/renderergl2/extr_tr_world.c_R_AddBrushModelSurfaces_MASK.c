#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  hModel; } ;
struct TYPE_15__ {TYPE_1__ e; } ;
typedef  TYPE_4__ trRefEntity_t ;
struct TYPE_16__ {TYPE_6__* bmodel; } ;
typedef  TYPE_5__ model_t ;
struct TYPE_17__ {int numSurfaces; int firstSurface; int /*<<< orphan*/  bounds; } ;
typedef  TYPE_6__ bmodel_t ;
struct TYPE_18__ {scalar_t__ viewCount; TYPE_3__* currentEntity; TYPE_2__* world; int /*<<< orphan*/  refdef; } ;
struct TYPE_14__ {int /*<<< orphan*/  needDlights; } ;
struct TYPE_13__ {scalar_t__* surfacesViewCount; scalar_t__ surfaces; } ;

/* Variables and functions */
 int CULL_OUT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 TYPE_7__ tr ; 

void FUNC5 ( trRefEntity_t *ent ) {
	bmodel_t	*bmodel;
	int			clip;
	model_t		*pModel;
	int			i;

	pModel = FUNC3( ent->e.hModel );

	bmodel = pModel->bmodel;

	clip = FUNC1( bmodel->bounds );
	if ( clip == CULL_OUT ) {
		return;
	}
	
	FUNC4( &tr.refdef, ent );
	FUNC2( bmodel );

	for ( i = 0 ; i < bmodel->numSurfaces ; i++ ) {
		int surf = bmodel->firstSurface + i;

		if (tr.world->surfacesViewCount[surf] != tr.viewCount)
		{
			tr.world->surfacesViewCount[surf] = tr.viewCount;
			FUNC0( tr.world->surfaces + surf, tr.currentEntity->needDlights, 0 );
		}
	}
}