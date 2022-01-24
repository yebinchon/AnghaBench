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
typedef  scalar_t__* vec3_t ;
typedef  int /*<<< orphan*/  qboolean ;

/* Variables and functions */
 scalar_t__ CULL_EPSILON ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

qboolean FUNC1( const vec3_t v1, const vec3_t v2 ){
	int i;


	for ( i = 0; i < 3; i++ )
		if ( FUNC0( v1[ i ] - v2[ i ] ) > CULL_EPSILON ) {
			return qfalse;
		}
	return qtrue;
}