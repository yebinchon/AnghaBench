#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__* vec3_t ;
struct TYPE_5__ {int frame; int /*<<< orphan*/  axis; int /*<<< orphan*/  origin; int /*<<< orphan*/  hModel; scalar_t__ oldframe; int /*<<< orphan*/  backlerp; } ;
struct TYPE_4__ {int /*<<< orphan*/ * viewaxis; int /*<<< orphan*/  vieworg; } ;
struct TYPE_6__ {TYPE_2__ testModelEntity; scalar_t__* refdefViewAngles; TYPE_1__ refdef; int /*<<< orphan*/  testModelName; int /*<<< orphan*/  testGun; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  MAX_QPATH ; 
 size_t PITCH ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t ROLL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t YAW ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_3__ cg ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  qfalse ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9 (void) {
	vec3_t		angles;

	cg.testGun = qfalse;
	FUNC6( &cg.testModelEntity, 0, sizeof(cg.testModelEntity) );
	if ( FUNC7() < 2 ) {
		return;
	}

	FUNC3 (cg.testModelName, FUNC1( 1 ), MAX_QPATH );
	cg.testModelEntity.hModel = FUNC8( cg.testModelName );

	if ( FUNC7() == 3 ) {
		cg.testModelEntity.backlerp = FUNC5( FUNC1( 2 ) );
		cg.testModelEntity.frame = 1;
		cg.testModelEntity.oldframe = 0;
	}
	if (! cg.testModelEntity.hModel ) {
		FUNC2( "Can't register model\n" );
		return;
	}

	FUNC4( cg.refdef.vieworg, 100, cg.refdef.viewaxis[0], cg.testModelEntity.origin );

	angles[PITCH] = 0;
	angles[YAW] = 180 + cg.refdefViewAngles[1];
	angles[ROLL] = 0;

	FUNC0( angles, cg.testModelEntity.axis );
}