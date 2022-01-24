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
 int /*<<< orphan*/  FUNC0 (size_t,size_t) ; 
 char* FUNC1 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 size_t FUNC3 (char*) ; 

char *FUNC4( char *dst, size_t dlen, const char *src, size_t slen ) {
	size_t n = FUNC3( dst );

	if ( n > dlen ) {
		FUNC2(); /* buffer overflow */
	}

	return FUNC1( dst + n, src, FUNC0( slen, dlen - n ) );
}