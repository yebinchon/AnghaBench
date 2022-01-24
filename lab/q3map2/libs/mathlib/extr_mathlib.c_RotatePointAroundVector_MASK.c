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
typedef  int /*<<< orphan*/  zrot ;
typedef  float vec_t ;
typedef  float* vec3_t ;
typedef  int /*<<< orphan*/  im ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float*,float*,float*) ; 
 float FUNC1 (float) ; 
 int /*<<< orphan*/  FUNC2 (float**,float**,float**) ; 
 int /*<<< orphan*/  FUNC3 (float*,float* const) ; 
 scalar_t__ FUNC4 (float) ; 
 int /*<<< orphan*/  FUNC5 (float**,float**,int) ; 
 int /*<<< orphan*/  FUNC6 (float**,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (float) ; 

void FUNC8( vec3_t dst, const vec3_t dir, const vec3_t point,
							  float degrees ) {
	float m[3][3];
	float im[3][3];
	float zrot[3][3];
	float tmpmat[3][3];
	float rot[3][3];
	int i;
	vec3_t vr, vup, vf;
	float rad;

	vf[0] = dir[0];
	vf[1] = dir[1];
	vf[2] = dir[2];

	FUNC3( vr, dir );
	FUNC0( vr, vf, vup );

	m[0][0] = vr[0];
	m[1][0] = vr[1];
	m[2][0] = vr[2];

	m[0][1] = vup[0];
	m[1][1] = vup[1];
	m[2][1] = vup[2];

	m[0][2] = vf[0];
	m[1][2] = vf[1];
	m[2][2] = vf[2];

	FUNC5( im, m, sizeof( im ) );

	im[0][1] = m[1][0];
	im[0][2] = m[2][0];
	im[1][0] = m[0][1];
	im[1][2] = m[2][1];
	im[2][0] = m[0][2];
	im[2][1] = m[1][2];

	FUNC6( zrot, 0, sizeof( zrot ) );
	zrot[0][0] = zrot[1][1] = zrot[2][2] = 1.0F;

	rad = FUNC1( degrees );
	zrot[0][0] = (vec_t)FUNC4( rad );
	zrot[0][1] = (vec_t)FUNC7( rad );
	zrot[1][0] = (vec_t)-FUNC7( rad );
	zrot[1][1] = (vec_t)FUNC4( rad );

	FUNC2( m, zrot, tmpmat );
	FUNC2( tmpmat, im, rot );

	for ( i = 0; i < 3; i++ ) {
		dst[i] = rot[i][0] * point[0] + rot[i][1] * point[1] + rot[i][2] * point[2];
	}
}