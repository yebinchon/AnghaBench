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

/* Variables and functions */
 scalar_t__ FLEN_ERROR ; 
 scalar_t__ flen ; 
 int /*<<< orphan*/  FUNC0 (int*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int) ; 

int FUNC2( unsigned char **bp ){
	int i;

	if ( flen == FLEN_ERROR ) {
		return 0;
	}
	FUNC0( &i, *bp, 4 );
	FUNC1( &i, 4, 1 );
	flen += 4;
	*bp += 4;
	return i;
}