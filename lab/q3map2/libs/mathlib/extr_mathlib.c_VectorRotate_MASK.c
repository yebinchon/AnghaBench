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
typedef  float vec_t ;
typedef  float* vec3_t ;

/* Variables and functions */
 float Q_PI ; 
 int /*<<< orphan*/  FUNC0 (float*,float*) ; 
 int /*<<< orphan*/  FUNC1 (float) ; 
 int /*<<< orphan*/  FUNC2 (float) ; 

void FUNC3( vec3_t vIn, vec3_t vRotation, vec3_t out ){
	vec3_t vWork, va;
	int nIndex[3][2];
	int i;

	FUNC0( vIn, va );
	FUNC0( va, vWork );
	nIndex[0][0] = 1; nIndex[0][1] = 2;
	nIndex[1][0] = 2; nIndex[1][1] = 0;
	nIndex[2][0] = 0; nIndex[2][1] = 1;

	for ( i = 0; i < 3; i++ )
	{
		if ( vRotation[i] != 0 ) {
			float dAngle = vRotation[i] * Q_PI / 180.0f;
			float c = (vec_t)FUNC1( dAngle );
			float s = (vec_t)FUNC2( dAngle );
			vWork[nIndex[i][0]] = va[nIndex[i][0]] * c - va[nIndex[i][1]] * s;
			vWork[nIndex[i][1]] = va[nIndex[i][0]] * s + va[nIndex[i][1]] * c;
		}
		FUNC0( vWork, va );
	}
	FUNC0( vWork, out );
}