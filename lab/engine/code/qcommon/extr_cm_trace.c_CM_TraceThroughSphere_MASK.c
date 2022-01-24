#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  float* vec3_t ;
struct TYPE_5__ {int /*<<< orphan*/  normal; int /*<<< orphan*/  dist; } ;
struct TYPE_6__ {float fraction; int /*<<< orphan*/  contents; TYPE_1__ plane; void* allsolid; void* startsolid; } ;
struct TYPE_7__ {TYPE_2__ trace; int /*<<< orphan*/  modelOrigin; } ;
typedef  TYPE_3__ traceWork_t ;

/* Variables and functions */
 float FUNC0 (float*,float*,float*,float*) ; 
 int /*<<< orphan*/  CONTENTS_BODY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,float*) ; 
 float RADIUS_EPSILON ; 
 float SURFACE_CLIP_EPSILON ; 
 float FUNC2 (float) ; 
 float FUNC3 (float) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,float*,float*) ; 
 int /*<<< orphan*/  FUNC5 (float*,int /*<<< orphan*/ ) ; 
 float FUNC6 (float*) ; 
 float FUNC7 (float*) ; 
 int /*<<< orphan*/  FUNC8 (float*,float,float*,float*) ; 
 float FUNC9 (float*) ; 
 int /*<<< orphan*/  FUNC10 (float*,float,float*) ; 
 int /*<<< orphan*/  FUNC11 (float*,float*,float*) ; 
 void* qtrue ; 

void FUNC12( traceWork_t *tw, vec3_t origin, float radius, vec3_t start, vec3_t end ) {
	float l1, l2, length, scale, fraction;
	//float a;
	float b, c, d, sqrtd;
	vec3_t v1, dir, intersection;

	// if inside the sphere
	FUNC11(start, origin, dir);
	l1 = FUNC7(dir);
	if (l1 < FUNC2(radius)) {
		tw->trace.fraction = 0;
		tw->trace.startsolid = qtrue;
		// test for allsolid
		FUNC11(end, origin, dir);
		l1 = FUNC7(dir);
		if (l1 < FUNC2(radius)) {
			tw->trace.allsolid = qtrue;
		}
		return;
	}
	//
	FUNC11(end, start, dir);
	length = FUNC9(dir);
	//
	l1 = FUNC0(origin, start, end, dir);
	FUNC11(end, origin, v1);
	l2 = FUNC7(v1);
	// if no intersection with the sphere and the end point is at least an epsilon away
	if (l1 >= FUNC2(radius) && l2 > FUNC2(radius+SURFACE_CLIP_EPSILON)) {
		return;
	}
	//
	//	| origin - (start + t * dir) | = radius
	//	a = dir[0]^2 + dir[1]^2 + dir[2]^2;
	//	b = 2 * (dir[0] * (start[0] - origin[0]) + dir[1] * (start[1] - origin[1]) + dir[2] * (start[2] - origin[2]));
	//	c = (start[0] - origin[0])^2 + (start[1] - origin[1])^2 + (start[2] - origin[2])^2 - radius^2;
	//
	FUNC11(start, origin, v1);
	// dir is normalized so a = 1
	//a = 1.0f;//dir[0] * dir[0] + dir[1] * dir[1] + dir[2] * dir[2];
	b = 2.0f * (dir[0] * v1[0] + dir[1] * v1[1] + dir[2] * v1[2]);
	c = v1[0] * v1[0] + v1[1] * v1[1] + v1[2] * v1[2] - (radius+RADIUS_EPSILON) * (radius+RADIUS_EPSILON);

	d = b * b - 4.0f * c;// * a;
	if (d > 0) {
		sqrtd = FUNC3(d);
		// = (- b + sqrtd) * 0.5f; // / (2.0f * a);
		fraction = (- b - sqrtd) * 0.5f; // / (2.0f * a);
		//
		if (fraction < 0) {
			fraction = 0;
		}
		else {
			fraction /= length;
		}
		if ( fraction < tw->trace.fraction ) {
			tw->trace.fraction = fraction;
			FUNC11(end, start, dir);
			FUNC8(start, fraction, dir, intersection);
			FUNC11(intersection, origin, dir);
			#ifdef CAPSULE_DEBUG
				l2 = VectorLength(dir);
				if (l2 < radius) {
					int bah = 1;
				}
			#endif
			scale = 1 / (radius+RADIUS_EPSILON);
			FUNC10(dir, scale, dir);
			FUNC5(dir, tw->trace.plane.normal);
			FUNC4( tw->modelOrigin, intersection, intersection);
			tw->trace.plane.dist = FUNC1(tw->trace.plane.normal, intersection);
			tw->trace.contents = CONTENTS_BODY;
		}
	}
	else if (d == 0) {
		//t1 = (- b ) / 2;
		// slide along the sphere
	}
	// no intersection at all
}