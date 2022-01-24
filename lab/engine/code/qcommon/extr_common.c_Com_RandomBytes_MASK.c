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
typedef  unsigned char byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (unsigned char*,int) ; 
 int FUNC2 () ; 

void FUNC3( byte *string, int len )
{
	int i;

	if( FUNC1( string, len ) )
		return;

	FUNC0( "Com_RandomBytes: using weak randomization\n" );
	for( i = 0; i < len; i++ )
		string[i] = (unsigned char)( FUNC2() % 256 );
}