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
typedef  int qboolean ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 scalar_t__ errno ; 
 int FUNC0 (char const*,int) ; 
 int qtrue ; 

qboolean FUNC1( const char *path )
{
	int result = FUNC0( path, 0750 );

	if( result != 0 )
		return errno == EEXIST;

	return qtrue;
}