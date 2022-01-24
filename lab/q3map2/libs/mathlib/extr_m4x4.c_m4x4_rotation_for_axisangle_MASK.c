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
typedef  double vec_t ;
typedef  float* vec4_t ;
typedef  float* vec3_t ;
typedef  int /*<<< orphan*/  m4x4_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,float*) ; 
 scalar_t__ FUNC2 (float) ; 

void FUNC3( m4x4_t matrix, const vec3_t axis, vec_t angle ){
	vec4_t rotation;
	angle *= 0.5;

	rotation[3] = (float)FUNC2( (float)( angle ) );

	rotation[0]    = axis[0] * rotation[3];
	rotation[1]    = axis[1] * rotation[3];
	rotation[2]    = axis[2] * rotation[3];
	rotation[3]    = (float)FUNC0( (float)( angle ) );

	FUNC1( matrix, rotation );
}