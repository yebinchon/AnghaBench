#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vec4_t ;
typedef  float* vec3_t ;
typedef  int /*<<< orphan*/  qboolean ;

/* Variables and functions */
 float FUNC0 (float*,float*) ; 
 float MAX_OUTSIDE_EPSILON ; 
 float MIN_OUTSIDE_EPSILON ; 
 int /*<<< orphan*/  FUNC1 (float*,float*,float*) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

__attribute__((used)) static qboolean FUNC2( vec3_t pt, vec4_t plane, vec3_t a, vec3_t b, vec3_t c, vec3_t bary ){
	vec3_t u, v, w;
	float uu, uv, vv, wu, wv, d;


	/* make vectors */
	FUNC1( b, a, u );
	FUNC1( c, a, v );
	FUNC1( pt, a, w );

	/* more setup */
	uu = FUNC0( u, u );
	uv = FUNC0( u, v );
	vv = FUNC0( v, v );
	wu = FUNC0( w, u );
	wv = FUNC0( w, v );
	d = uv * uv - uu * vv;

	/* calculate barycentric coordinates */
	bary[ 1 ] = ( uv * wv - vv * wu ) / d;
	if ( bary[ 1 ] < MIN_OUTSIDE_EPSILON || bary[ 1 ] > MAX_OUTSIDE_EPSILON ) {
		return qfalse;
	}
	bary[ 2 ] = ( uv * wv - uu * wv ) / d;
	if ( bary[ 2 ] < MIN_OUTSIDE_EPSILON || bary[ 2 ] > MAX_OUTSIDE_EPSILON ) {
		return qfalse;
	}
	bary[ 0 ] = 1.0f - ( bary[ 1 ] + bary[ 2 ] );

	/* point is in triangle */
	return qtrue;
}