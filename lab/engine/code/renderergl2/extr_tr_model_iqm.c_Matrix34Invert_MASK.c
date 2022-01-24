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
typedef  float* vec3_t ;

/* Variables and functions */
 float FUNC0 (float*,float*) ; 
 int /*<<< orphan*/  FUNC1 (float*,float,float*) ; 

__attribute__((used)) static void FUNC2( float *inMat, float *outMat )
{
	vec3_t trans;
	float invSqrLen, *v;

	outMat[ 0] = inMat[ 0]; outMat[ 1] = inMat[ 4]; outMat[ 2] = inMat[ 8];
	outMat[ 4] = inMat[ 1]; outMat[ 5] = inMat[ 5]; outMat[ 6] = inMat[ 9];
	outMat[ 8] = inMat[ 2]; outMat[ 9] = inMat[ 6]; outMat[10] = inMat[10];

	v = outMat + 0; invSqrLen = 1.0f / FUNC0(v, v); FUNC1(v, invSqrLen, v);
	v = outMat + 4; invSqrLen = 1.0f / FUNC0(v, v); FUNC1(v, invSqrLen, v);
	v = outMat + 8; invSqrLen = 1.0f / FUNC0(v, v); FUNC1(v, invSqrLen, v);

	trans[0] = inMat[ 3];
	trans[1] = inMat[ 7];
	trans[2] = inMat[11];

	outMat[ 3] = -FUNC0(outMat + 0, trans);
	outMat[ 7] = -FUNC0(outMat + 4, trans);
	outMat[11] = -FUNC0(outMat + 8, trans);
}