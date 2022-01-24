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
typedef  int /*<<< orphan*/  picoMemStream_t ;

/* Variables and functions */
 scalar_t__ FLEN_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ flen ; 

int FUNC2( picoMemStream_t *fp ){
	int i, c;

	if ( flen == FLEN_ERROR ) {
		return 0;
	}

	c = FUNC1( fp );
	if ( c != 0xFF ) {
		i = c << 8;
		c = FUNC1( fp );
		i |= c;
		flen += 2;
	}
	else {
		c = FUNC1( fp );
		i = c << 16;
		c = FUNC1( fp );
		i |= c << 8;
		c = FUNC1( fp );
		i |= c;
		flen += 4;
	}

	if ( FUNC0( fp ) ) {
		flen = FLEN_ERROR;
		return 0;
	}
	return i;
}