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
typedef  scalar_t__ vec_accu_t ;
typedef  scalar_t__* vec3_accu_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ SNAP_EPSILON ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

void FUNC3( vec3_accu_t a, vec3_accu_t b, vec3_accu_t out ){
	// I'm just preserving what I think was the intended logic of the original
	// SnapWeldVector().  I'm not actually sure where this function should even
	// be used.  I'd like to know which kinds of problems this function addresses.

	// TODO: I thought we're snapping all coordinates to nearest 1/8 unit?
	// So what is natural about snapping to the nearest integer?  Maybe we should
	// be snapping to the nearest 1/8 unit instead?

	int i;
	vec_accu_t ai, bi, ad, bd;

	if ( a == NULL || b == NULL || out == NULL ) {
		FUNC0( "SnapWeldVectorAccu: NULL argument" );
	}

	for ( i = 0; i < 3; i++ )
	{
		ai = FUNC1( a[i] );
		bi = FUNC1( b[i] );
		ad = FUNC2( ai - a[i] );
		bd = FUNC2( bi - b[i] );

		if ( ad < bd ) {
			if ( ad < SNAP_EPSILON ) {
				out[i] = ai;
			}
			else{out[i] = a[i]; }
		}
		else
		{
			if ( bd < SNAP_EPSILON ) {
				out[i] = bi;
			}
			else{out[i] = b[i]; }
		}
	}
}