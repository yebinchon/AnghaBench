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
 int /*<<< orphan*/  FUNC0 (float*,float*,float* const) ; 
 int /*<<< orphan*/  FUNC1 (float*) ; 
 float FUNC2 (float) ; 

void FUNC3( vec3_t dst, const vec3_t src )
{
	int	pos;
	int i;
	float minelem = 1.0F;
	vec3_t tempvec;

	/*
	** find the smallest magnitude axially aligned vector
	*/
	for ( pos = 0, i = 0; i < 3; i++ )
	{
		if ( FUNC2( src[i] ) < minelem )
		{
			pos = i;
			minelem = FUNC2( src[i] );
		}
	}
	tempvec[0] = tempvec[1] = tempvec[2] = 0.0F;
	tempvec[pos] = 1.0F;

	/*
	** project the point onto the plane defined by src
	*/
	FUNC0( dst, tempvec, src );

	/*
	** normalize the result
	*/
	FUNC1( dst );
}