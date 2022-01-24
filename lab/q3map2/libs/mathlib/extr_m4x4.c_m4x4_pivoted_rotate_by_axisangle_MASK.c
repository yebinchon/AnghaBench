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
typedef  int /*<<< orphan*/  vec_t ;
typedef  int /*<<< orphan*/  const vec3_t ;
typedef  int /*<<< orphan*/  m4x4_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 

void FUNC3( m4x4_t matrix, const vec3_t axis, vec_t angle, const vec3_t pivotpoint ){
	vec3_t vec3_temp;
	FUNC0( pivotpoint, vec3_temp );

	FUNC2( matrix, pivotpoint );
	FUNC1( matrix, axis, angle );
	FUNC2( matrix, vec3_temp );
}