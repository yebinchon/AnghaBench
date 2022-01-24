#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_4__ {int number; scalar_t__ solid; int /*<<< orphan*/  modelindex; } ;
typedef  TYPE_1__ entityState_t ;
typedef  int /*<<< orphan*/  clipHandle_t ;
struct TYPE_5__ {int /*<<< orphan*/  lerpAngles; int /*<<< orphan*/  lerpOrigin; TYPE_1__ currentState; } ;
typedef  TYPE_2__ centity_t ;

/* Variables and functions */
 scalar_t__ SOLID_BMODEL ; 
 int cg_numSolidEntities ; 
 TYPE_2__** cg_solidEntities ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int		FUNC3( const vec3_t point, int passEntityNum ) {
	int			i;
	entityState_t	*ent;
	centity_t	*cent;
	clipHandle_t cmodel;
	int			contents;

	contents = FUNC1 (point, 0);

	for ( i = 0 ; i < cg_numSolidEntities ; i++ ) {
		cent = cg_solidEntities[ i ];

		ent = &cent->currentState;

		if ( ent->number == passEntityNum ) {
			continue;
		}

		if (ent->solid != SOLID_BMODEL) { // special value for bmodel
			continue;
		}

		cmodel = FUNC0( ent->modelindex );
		if ( !cmodel ) {
			continue;
		}

		contents |= FUNC2( point, cmodel, cent->lerpOrigin, cent->lerpAngles );
	}

	return contents;
}