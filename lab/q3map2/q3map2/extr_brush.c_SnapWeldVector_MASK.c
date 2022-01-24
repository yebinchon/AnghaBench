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
typedef  scalar_t__* vec3_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ SNAP_EPSILON ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

void FUNC2( vec3_t a, vec3_t b, vec3_t out ){
	int i;
	vec_t ai, bi, outi;


	/* dummy check */
	if ( a == NULL || b == NULL || out == NULL ) {
		return;
	}

	/* do each element */
	for ( i = 0; i < 3; i++ )
	{
		/* round to integer */
		ai = FUNC0( a[ i ] );
		bi = FUNC0( b[ i ] );

		/* prefer exact integer */
		if ( ai == a[ i ] ) {
			out[ i ] = a[ i ];
		}
		else if ( bi == b[ i ] ) {
			out[ i ] = b[ i ];
		}

		/* use nearest */
		else if ( FUNC1( ai - a[ i ] ) < FUNC1( bi - b[ i ] ) ) {
			out[ i ] = a[ i ];
		}
		else{
			out[ i ] = b[ i ];
		}

		/* snap */
		outi = FUNC0( out[ i ] );
		if ( FUNC1( outi - out[ i ] ) <= SNAP_EPSILON ) {
			out[ i ] = outi;
		}
	}
}