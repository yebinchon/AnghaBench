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
typedef  int /*<<< orphan*/  vec3_t ;
typedef  int /*<<< orphan*/  qboolean ;

/* Variables and functions */
 float FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float FUNC1 (int /*<<< orphan*/ ) ; 
 float FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

qboolean FUNC5( vec3_t v1, vec3_t v2, vec3_t v3 ){
	vec3_t midpoint, dir, offset, on;
	float d;

	FUNC4( v2, v1, midpoint );
	FUNC4( v3, v1, dir );
	d = FUNC2( dir, dir );
	if ( d == 0 ) {
		return qfalse;  // degenerate
	}

	d = FUNC0( midpoint, dir );
	FUNC3( dir, d, on );
	FUNC4( midpoint, on, offset );
	d = FUNC1( offset );

	if ( d < 0.1 ) {
		return qtrue;
	}

	return qfalse;
}