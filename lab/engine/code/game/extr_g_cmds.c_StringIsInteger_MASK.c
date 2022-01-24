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
typedef  int /*<<< orphan*/  qboolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int FUNC1 (char const*) ; 

qboolean FUNC2( const char * s ) {
	int			i;
	int			len;
	qboolean	foundDigit;

	len = FUNC1( s );
	foundDigit = qfalse;

	for ( i=0 ; i < len ; i++ ) {
		if ( !FUNC0( s[i] ) ) {
			return qfalse;
		}

		foundDigit = qtrue;
	}

	return foundDigit;
}