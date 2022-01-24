#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  double* vec3_t ;
struct TYPE_11__ {double* xyz; int* st; int* modulate; } ;
typedef  TYPE_3__ polyVert_t ;
struct TYPE_9__ {double** viewaxis; } ;
struct TYPE_15__ {TYPE_1__ refdef; } ;
struct TYPE_14__ {float value; } ;
struct TYPE_13__ {double value; } ;
struct TYPE_10__ {int /*<<< orphan*/  tracerSound; int /*<<< orphan*/  tracerShader; } ;
struct TYPE_12__ {TYPE_2__ media; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHAN_AUTO ; 
 double FUNC0 (double*,double*) ; 
 int /*<<< orphan*/  ENTITYNUM_WORLD ; 
 int /*<<< orphan*/  FUNC1 (double*,double,double*,double*) ; 
 float FUNC2 (double*) ; 
 int /*<<< orphan*/  FUNC3 (double*,double,double*) ; 
 int /*<<< orphan*/  FUNC4 (double*,double*,double*) ; 
 TYPE_8__ cg ; 
 TYPE_7__ cg_tracerLength ; 
 TYPE_6__ cg_tracerWidth ; 
 TYPE_5__ cgs ; 
 float FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (double*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8( vec3_t source, vec3_t dest ) {
	vec3_t		forward, right;
	polyVert_t	verts[4];
	vec3_t		line;
	float		len, begin, end;
	vec3_t		start, finish;
	vec3_t		midpoint;

	// tracer
	FUNC4( dest, source, forward );
	len = FUNC2( forward );

	// start at least a little ways from the muzzle
	if ( len < 100 ) {
		return;
	}
	begin = 50 + FUNC5() * (len - 60);
	end = begin + cg_tracerLength.value;
	if ( end > len ) {
		end = len;
	}
	FUNC1( source, begin, forward, start );
	FUNC1( source, end, forward, finish );

	line[0] = FUNC0( forward, cg.refdef.viewaxis[1] );
	line[1] = FUNC0( forward, cg.refdef.viewaxis[2] );

	FUNC3( cg.refdef.viewaxis[1], line[1], right );
	FUNC1( right, -line[0], cg.refdef.viewaxis[2], right );
	FUNC2( right );

	FUNC1( finish, cg_tracerWidth.value, right, verts[0].xyz );
	verts[0].st[0] = 0;
	verts[0].st[1] = 1;
	verts[0].modulate[0] = 255;
	verts[0].modulate[1] = 255;
	verts[0].modulate[2] = 255;
	verts[0].modulate[3] = 255;

	FUNC1( finish, -cg_tracerWidth.value, right, verts[1].xyz );
	verts[1].st[0] = 1;
	verts[1].st[1] = 0;
	verts[1].modulate[0] = 255;
	verts[1].modulate[1] = 255;
	verts[1].modulate[2] = 255;
	verts[1].modulate[3] = 255;

	FUNC1( start, -cg_tracerWidth.value, right, verts[2].xyz );
	verts[2].st[0] = 1;
	verts[2].st[1] = 1;
	verts[2].modulate[0] = 255;
	verts[2].modulate[1] = 255;
	verts[2].modulate[2] = 255;
	verts[2].modulate[3] = 255;

	FUNC1( start, cg_tracerWidth.value, right, verts[3].xyz );
	verts[3].st[0] = 0;
	verts[3].st[1] = 0;
	verts[3].modulate[0] = 255;
	verts[3].modulate[1] = 255;
	verts[3].modulate[2] = 255;
	verts[3].modulate[3] = 255;

	FUNC6( cgs.media.tracerShader, 4, verts );

	midpoint[0] = ( start[0] + finish[0] ) * 0.5;
	midpoint[1] = ( start[1] + finish[1] ) * 0.5;
	midpoint[2] = ( start[2] + finish[2] ) * 0.5;

	// add the tracer sound
	FUNC7( midpoint, ENTITYNUM_WORLD, CHAN_AUTO, cgs.media.tracerSound );

}