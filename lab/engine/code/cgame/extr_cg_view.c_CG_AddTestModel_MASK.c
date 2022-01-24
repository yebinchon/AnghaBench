#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int* origin; int** axis; int /*<<< orphan*/  hModel; } ;
struct TYPE_7__ {int* vieworg; int** viewaxis; } ;
struct TYPE_12__ {TYPE_2__ testModelEntity; TYPE_1__ refdef; scalar_t__ testGun; int /*<<< orphan*/  testModelName; } ;
struct TYPE_11__ {int value; } ;
struct TYPE_10__ {int value; } ;
struct TYPE_9__ {int value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*) ; 
 TYPE_6__ cg ; 
 TYPE_5__ cg_gun_x ; 
 TYPE_4__ cg_gun_y ; 
 TYPE_3__ cg_gun_z ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4 (void) {
	int		i;

	// re-register the model, because the level may have changed
	cg.testModelEntity.hModel = FUNC3( cg.testModelName );
	if (! cg.testModelEntity.hModel ) {
		FUNC0 ("Can't register model\n");
		return;
	}

	// if testing a gun, set the origin relative to the view origin
	if ( cg.testGun ) {
		FUNC1( cg.refdef.vieworg, cg.testModelEntity.origin );
		FUNC1( cg.refdef.viewaxis[0], cg.testModelEntity.axis[0] );
		FUNC1( cg.refdef.viewaxis[1], cg.testModelEntity.axis[1] );
		FUNC1( cg.refdef.viewaxis[2], cg.testModelEntity.axis[2] );

		// allow the position to be adjusted
		for (i=0 ; i<3 ; i++) {
			cg.testModelEntity.origin[i] += cg.refdef.viewaxis[0][i] * cg_gun_x.value;
			cg.testModelEntity.origin[i] += cg.refdef.viewaxis[1][i] * cg_gun_y.value;
			cg.testModelEntity.origin[i] += cg.refdef.viewaxis[2][i] * cg_gun_z.value;
		}
	}

	FUNC2( &cg.testModelEntity );
}