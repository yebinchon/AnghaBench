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
 int /*<<< orphan*/  FUNC0 (char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int TRUNCATE_LENGTH ; 
 int FUNC2 (char const*) ; 

void FUNC3( char *buffer, const char *s )
{
	int length = FUNC2( s );

	if( length <= TRUNCATE_LENGTH )
		FUNC1( buffer, s, TRUNCATE_LENGTH );
	else
	{
		FUNC1( buffer, s, ( TRUNCATE_LENGTH / 2 ) - 3 );
		FUNC0( buffer, TRUNCATE_LENGTH, " ... " );
		FUNC0( buffer, TRUNCATE_LENGTH, s + length - ( TRUNCATE_LENGTH / 2 ) + 3 );
	}
}