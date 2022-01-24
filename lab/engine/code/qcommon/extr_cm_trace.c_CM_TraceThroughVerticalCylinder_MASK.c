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
 int /*<<< orphan*/  FUNC11 (float*,float,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (float*,float*,float*) ; 
 void* qtrue ; 

void FUNC13( traceWork_t *tw, vec3_t origin, float radius, float halfheight, vec3_t start, vec3_t end) {
	float length, scale, fraction, l1, l2;
	//float a;
	float b, c, d, sqrtd;
	vec3_t v1, dir, start2d, end2d, org2d, intersection;

	// 2d coordinates
	FUNC11(start2d, start[0], start[1], 0);
	FUNC11(end2d, end[0], end[1], 0);
	FUNC11(org2d, origin[0], origin[1], 0);
	// if between lower and upper cylinder bounds
	if (start[2] <= origin[2] + halfheight &&
				start[2] >= origin[2] - halfheight) {
		// if inside the cylinder
		FUNC12(start2d, org2d, dir);
		l1 = FUNC7(dir);
		if (l1 < FUNC2(radius)) {
			tw->trace.fraction = 0;
			tw->trace.startsolid = qtrue;
			FUNC12(end2d, org2d, dir);
			l1 = FUNC7(dir);
			if (l1 < FUNC2(radius)) {
				tw->trace.allsolid = qtrue;
			}
			return;
		}
	}
	//
	FUNC12(end2d, start2d, dir);
	length = FUNC9(dir);
	//
	l1 = FUNC0(org2d, start2d, end2d, dir);
	FUNC12(end2d, org2d, v1);
	l2 = FUNC7(v1);
	// if no intersection with the cylinder and the end point is at least an epsilon away
	if (l1 >= FUNC2(radius) && l2 > FUNC2(radius+SURFACE_CLIP_EPSILON)) {
		return;
	}
	//
	//
	// (start[0] - origin[0] - t * dir[0]) ^ 2 + (start[1] - origin[1] - t * dir[1]) ^ 2 = radius ^ 2
	// (v1[0] + t * dir[0]) ^ 2 + (v1[1] + t * dir[1]) ^ 2 = radius ^ 2;
	// v1[0] ^ 2 + 2 * v1[0] * t * dir[0] + (t * dir[0]) ^ 2 +
	//						v1[1] ^ 2 + 2 * v1[1] * t * dir[1] + (t * dir[1]) ^ 2 = radius ^ 2
	// t ^ 2 * (dir[0] ^ 2 + dir[1] ^ 2) + t * (2 * v1[0] * dir[0] + 2 * v1[1] * dir[1]) +
	//						v1[0] ^ 2 + v1[1] ^ 2 - radius ^ 2 = 0
	//
	FUNC12(start, origin, v1);
	// dir is normalized so we can use a = 1
	//a = 1.0f;// * (dir[0] * dir[0] + dir[1] * dir[1]);
	b = 2.0f * (v1[0] * dir[0] + v1[1] * dir[1]);
	c = v1[0] * v1[0] + v1[1] * v1[1] - (radius+RADIUS_EPSILON) * (radius+RADIUS_EPSILON);

	d = b * b - 4.0f * c;// * a;
	if (d > 0) {
		sqrtd = FUNC3(d);
		// = (- b + sqrtd) * 0.5f;// / (2.0f * a);
		fraction = (- b - sqrtd) * 0.5f;// / (2.0f * a);
		//
		if (fraction < 0) {
			fraction = 0;
		}
		else {
			fraction /= length;
		}
		if ( fraction < tw->trace.fraction ) {
			FUNC12(end, start, dir);
			FUNC8(start, fraction, dir, intersection);
			// if the intersection is between the cylinder lower and upper bound
			if (intersection[2] <= origin[2] + halfheight &&
						intersection[2] >= origin[2] - halfheight) {
				//
				tw->trace.fraction = fraction;
				FUNC12(intersection, origin, dir);
				dir[2] = 0;
				#ifdef CAPSULE_DEBUG
					l2 = VectorLength(dir);
					if (l2 <= radius) {
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
	}
	else if (d == 0) {
		//t[0] = (- b ) / 2 * a;
		// slide along the cylinder
	}
	// no intersection at all
}