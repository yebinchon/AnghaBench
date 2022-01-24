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
typedef  int /*<<< orphan*/ * vec4_t ;
typedef  int /*<<< orphan*/  vec3_t ;
typedef  int /*<<< orphan*/  qboolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

qboolean FUNC4( vec4_t plane, const vec3_t a, const vec3_t b, const vec3_t c ) {
	vec3_t d1, d2;

	FUNC3( b, a, d1 );
	FUNC3( c, a, d2 );
	FUNC0( d2, d1, plane );
	if ( FUNC2( plane, plane ) == 0 ) {
		return qfalse;
	}

	plane[3] = FUNC1( a, plane );
	return qtrue;
}