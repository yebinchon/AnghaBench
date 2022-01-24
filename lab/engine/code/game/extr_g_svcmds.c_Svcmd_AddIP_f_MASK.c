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
typedef  int /*<<< orphan*/  str ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int MAX_TOKEN_CHARS ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 

void FUNC4 (void)
{
	char		str[MAX_TOKEN_CHARS];

	if ( FUNC2() < 2 ) {
		FUNC1("Usage: addip <ip-mask>\n");
		return;
	}

	FUNC3( 1, str, sizeof( str ) );

	FUNC0( str );

}