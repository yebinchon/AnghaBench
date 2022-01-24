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
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_ALREADY_EXISTS ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

qboolean FUNC2( const char *path )
{
	if( !FUNC0( path, NULL ) )
	{
		if( FUNC1( ) != ERROR_ALREADY_EXISTS )
			return qfalse;
	}

	return qtrue;
}