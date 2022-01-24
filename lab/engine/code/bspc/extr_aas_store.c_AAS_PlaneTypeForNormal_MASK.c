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
typedef  scalar_t__ vec_t ;
typedef  double* vec3_t ;

/* Variables and functions */
 double NORMAL_EPSILON ; 
 int PLANE_ANYX ; 
 int PLANE_ANYY ; 
 int PLANE_ANYZ ; 
 int PLANE_X ; 
 int PLANE_Y ; 
 int PLANE_Z ; 
 scalar_t__ FUNC0 (double) ; 

int FUNC1(vec3_t normal)
{
	vec_t	ax, ay, az;
	
	//NOTE: epsilon used
	if (	(normal[0] >= 1.0 -NORMAL_EPSILON) ||
			(normal[0] <= -1.0 + NORMAL_EPSILON)) return PLANE_X;
	if (	(normal[1] >= 1.0 -NORMAL_EPSILON) ||
			(normal[1] <= -1.0 + NORMAL_EPSILON)) return PLANE_Y;
	if (	(normal[2] >= 1.0 -NORMAL_EPSILON) ||
			(normal[2] <= -1.0 + NORMAL_EPSILON)) return PLANE_Z;
		
	ax = FUNC0(normal[0]);
	ay = FUNC0(normal[1]);
	az = FUNC0(normal[2]);
	
	if (ax >= ay && ax >= az) return PLANE_ANYX;
	if (ay >= ax && ay >= az) return PLANE_ANYY;
	return PLANE_ANYZ;
}