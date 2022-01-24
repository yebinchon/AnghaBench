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
typedef  int /*<<< orphan*/  val ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,float) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 scalar_t__ FUNC2 (float) ; 

void FUNC3( const char *var_name, float value )
{
	char val[32];

	if( FUNC2( value ) )
		FUNC0( val, sizeof(val), "%i", (int)value );
	else
		FUNC0( val, sizeof(val), "%f", value );
	FUNC1( var_name, val );
}