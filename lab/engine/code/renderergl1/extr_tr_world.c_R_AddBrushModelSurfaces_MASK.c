#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  hModel; } ;
struct TYPE_13__ {TYPE_2__ e; } ;
typedef  TYPE_3__ trRefEntity_t ;
struct TYPE_14__ {TYPE_5__* bmodel; } ;
typedef  TYPE_4__ model_t ;
struct TYPE_15__ {int numSurfaces; scalar_t__ firstSurface; int /*<<< orphan*/  bounds; } ;
typedef  TYPE_5__ bmodel_t ;
struct TYPE_16__ {TYPE_1__* currentEntity; int /*<<< orphan*/  refdef; } ;
struct TYPE_11__ {int /*<<< orphan*/  needDlights; } ;

/* Variables and functions */
 int CULL_OUT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 TYPE_6__ tr ; 

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
		FUNC0( bmodel->firstSurface + i, tr.currentEntity->needDlights );
	}
}