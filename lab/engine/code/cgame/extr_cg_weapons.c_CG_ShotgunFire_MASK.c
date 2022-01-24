#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_10__ {int /*<<< orphan*/  trBase; } ;
struct TYPE_11__ {int /*<<< orphan*/  otherEntityNum; int /*<<< orphan*/  eventParm; int /*<<< orphan*/  origin2; TYPE_3__ pos; } ;
typedef  TYPE_4__ entityState_t ;
struct TYPE_13__ {int /*<<< orphan*/  time; } ;
struct TYPE_9__ {int /*<<< orphan*/  shotgunSmokePuffShader; } ;
struct TYPE_8__ {scalar_t__ hardwareType; } ;
struct TYPE_12__ {TYPE_2__ media; TYPE_1__ glconfig; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,float,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int CONTENTS_WATER ; 
 scalar_t__ GLHW_RAGEPRO ; 
 int /*<<< orphan*/  LEF_PUFF_DONT_SCALE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_6__ cg ; 
 TYPE_5__ cgs ; 

void FUNC8( entityState_t *es ) {
	vec3_t	v;
	int		contents;

	FUNC7( es->origin2, es->pos.trBase, v );
	FUNC4( v );
	FUNC5( v, 32, v );
	FUNC3( es->pos.trBase, v, v );
	if ( cgs.glconfig.hardwareType != GLHW_RAGEPRO ) {
		// ragepro can't alpha fade, so don't even bother with smoke
		vec3_t			up;

		contents = FUNC0( es->pos.trBase, 0 );
		if ( !( contents & CONTENTS_WATER ) ) {
			FUNC6( up, 0, 0, 8 );
			FUNC2( v, up, 32, 1, 1, 1, 0.33f, 900, cg.time, 0, LEF_PUFF_DONT_SCALE, cgs.media.shotgunSmokePuffShader );
		}
	}
	FUNC1( es->pos.trBase, es->origin2, es->eventParm, es->otherEntityNum );
}