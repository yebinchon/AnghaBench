#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__* vec3_t ;
struct TYPE_6__ {scalar_t__* origin; scalar_t__* oldorigin; } ;
typedef  TYPE_2__ refEntity_t ;
struct TYPE_8__ {TYPE_1__* currentEntity; } ;
struct TYPE_7__ {int /*<<< orphan*/  whiteImage; } ;
struct TYPE_5__ {TYPE_2__ e; } ;

/* Variables and functions */
 int GLS_DSTBLEND_ONE ; 
 int GLS_SRCBLEND_ONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  GL_TRIANGLE_STRIP ; 
 int NUM_BEAM_SEGS ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__*,scalar_t__*,double) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC5 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int,scalar_t__*) ; 
 TYPE_4__ backEnd ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*) ; 
 TYPE_3__ tr ; 

__attribute__((used)) static void FUNC11( void )
{
#define NUM_BEAM_SEGS 6
	refEntity_t *e;
	int	i;
	vec3_t perpvec;
	vec3_t direction, normalized_direction;
	vec3_t	start_points[NUM_BEAM_SEGS], end_points[NUM_BEAM_SEGS];
	vec3_t oldorigin, origin;

	e = &backEnd.currentEntity->e;

	oldorigin[0] = e->oldorigin[0];
	oldorigin[1] = e->oldorigin[1];
	oldorigin[2] = e->oldorigin[2];

	origin[0] = e->origin[0];
	origin[1] = e->origin[1];
	origin[2] = e->origin[2];

	normalized_direction[0] = direction[0] = oldorigin[0] - origin[0];
	normalized_direction[1] = direction[1] = oldorigin[1] - origin[1];
	normalized_direction[2] = direction[2] = oldorigin[2] - origin[2];

	if ( FUNC5( normalized_direction ) == 0 )
		return;

	FUNC2( perpvec, normalized_direction );

	FUNC6( perpvec, 4, perpvec );

	for ( i = 0; i < NUM_BEAM_SEGS ; i++ )
	{
		FUNC3( start_points[i], normalized_direction, perpvec, (360.0/NUM_BEAM_SEGS)*i );
//		VectorAdd( start_points[i], origin, start_points[i] );
		FUNC4( start_points[i], direction, end_points[i] );
	}

	FUNC0( tr.whiteImage );

	FUNC1( GLS_SRCBLEND_ONE | GLS_DSTBLEND_ONE );

	FUNC8( 1, 0, 0 );

	FUNC7( GL_TRIANGLE_STRIP );
	for ( i = 0; i <= NUM_BEAM_SEGS; i++ ) {
		FUNC10( start_points[ i % NUM_BEAM_SEGS] );
		FUNC10( end_points[ i % NUM_BEAM_SEGS] );
	}
	FUNC9();
}