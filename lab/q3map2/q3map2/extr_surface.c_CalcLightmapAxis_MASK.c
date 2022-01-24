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
typedef  int /*<<< orphan*/  qboolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float*) ; 
 int /*<<< orphan*/  FUNC1 (float*,float,float,float) ; 
 float FUNC2 (float) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

qboolean FUNC3( vec3_t normal, vec3_t axis ){
	vec3_t absolute;


	/* test */
	if ( normal[ 0 ] == 0.0f && normal[ 1 ] == 0.0f && normal[ 2 ] == 0.0f ) {
		FUNC0( axis );
		return qfalse;
	}

	/* get absolute normal */
	absolute[ 0 ] = FUNC2( normal[ 0 ] );
	absolute[ 1 ] = FUNC2( normal[ 1 ] );
	absolute[ 2 ] = FUNC2( normal[ 2 ] );

	/* test and set */
	if ( absolute[ 2 ] > absolute[ 0 ] - 0.0001f && absolute[ 2 ] > absolute[ 1 ] - 0.0001f ) {
		if ( normal[ 2 ] > 0.0f ) {
			FUNC1( axis, 0.0f, 0.0f, 1.0f );
		}
		else{
			FUNC1( axis, 0.0f, 0.0f, -1.0f );
		}
	}
	else if ( absolute[ 0 ] > absolute[ 1 ] - 0.0001f && absolute[ 0 ] > absolute[ 2 ] - 0.0001f ) {
		if ( normal[ 0 ] > 0.0f ) {
			FUNC1( axis, 1.0f, 0.0f, 0.0f );
		}
		else{
			FUNC1( axis, -1.0f, 0.0f, 0.0f );
		}
	}
	else
	{
		if ( normal[ 1 ] > 0.0f ) {
			FUNC1( axis, 0.0f, 1.0f, 0.0f );
		}
		else{
			FUNC1( axis, 0.0f, -1.0f, 0.0f );
		}
	}

	/* return ok */
	return qtrue;
}