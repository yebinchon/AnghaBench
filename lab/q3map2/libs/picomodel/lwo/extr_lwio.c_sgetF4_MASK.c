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
 int /*<<< orphan*/  FUNC0 (float*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (float*,int,int) ; 

float FUNC2( unsigned char **bp ){
	float f;

	if ( flen == FLEN_ERROR ) {
		return 0.0f;
	}
	FUNC0( &f, *bp, 4 );
	FUNC1( &f, 4, 1 );
	flen += 4;
	*bp += 4;
	return f;
}