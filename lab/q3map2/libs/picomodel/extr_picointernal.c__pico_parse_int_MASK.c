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
typedef  int /*<<< orphan*/  picoParser_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*) ; 

int FUNC2( picoParser_t *p, int *out ){
	char *token;

	/* sanity checks */
	if ( p == NULL || out == NULL ) {
		return 0;
	}

	/* get token and turn it into an integer */
	*out = 0;
	token = FUNC0( p,0 );
	if ( token == NULL ) {
		return 0;
	}
	*out = FUNC1( token );

	/* success */
	return 1;
}