#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  double* vec3_t ;
struct TYPE_7__ {double radius; double halfheight; int /*<<< orphan*/  offset; int /*<<< orphan*/  use; } ;
struct TYPE_8__ {double* start; double* end; int /*<<< orphan*/ * size; TYPE_1__ sphere; } ;
typedef  TYPE_2__ traceWork_t ;
struct TYPE_9__ {int /*<<< orphan*/  leaf; } ;
typedef  TYPE_3__ cmodel_t ;
typedef  int /*<<< orphan*/  clipHandle_t ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,double*,double*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

void FUNC5( traceWork_t *tw, clipHandle_t model ) {
	vec3_t mins, maxs, offset, size[2];
	clipHandle_t h;
	cmodel_t *cmod;
	int i;

	// mins maxs of the capsule
	FUNC1(model, mins, maxs);

	// offset for capsule center
	for ( i = 0 ; i < 3 ; i++ ) {
		offset[i] = ( mins[i] + maxs[i] ) * 0.5;
		size[0][i] = mins[i] - offset[i];
		size[1][i] = maxs[i] - offset[i];
		tw->start[i] -= offset[i];
		tw->end[i] -= offset[i];
	}

	// replace the bounding box with the capsule
	tw->sphere.use = qtrue;
	tw->sphere.radius = ( size[1][0] > size[1][2] ) ? size[1][2]: size[1][0];
	tw->sphere.halfheight = size[1][2];
	FUNC4( tw->sphere.offset, 0, 0, size[1][2] - tw->sphere.radius );

	// replace the capsule with the bounding box
	h = FUNC2(tw->size[0], tw->size[1], qfalse);
	// calculate collision
	cmod = FUNC0( h );
	FUNC3( tw, &cmod->leaf );
}