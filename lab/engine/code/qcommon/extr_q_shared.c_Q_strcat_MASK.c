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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int FUNC2 (char*) ; 

void FUNC3( char *dest, int size, const char *src ) {
	int		l1;

	l1 = FUNC2( dest );
	if ( l1 >= size ) {
		FUNC0( ERR_FATAL, "Q_strcat: already overflowed" );
	}
	FUNC1( dest + l1, src, size - l1 );
}