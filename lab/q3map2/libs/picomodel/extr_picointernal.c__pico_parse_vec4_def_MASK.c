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
typedef  float* picoVec4_t ;
typedef  int /*<<< orphan*/  picoParser_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float*,float*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*) ; 

int FUNC3( picoParser_t *p, picoVec4_t out, picoVec4_t def ){
	char *token;
	int i;

	/* sanity checks */
	if ( p == NULL || out == NULL ) {
		return 0;
	}

	/* assign default vector value */
	FUNC0( def,out );

	/* parse four vector components */
	for ( i = 0; i < 4; i++ )
	{
		token = FUNC1( p,0 );
		if ( token == NULL ) {
			FUNC0( def,out );
			return 0;
		}
		out[ i ] = (float) FUNC2( token );
	}
	/* success */
	return 1;
}