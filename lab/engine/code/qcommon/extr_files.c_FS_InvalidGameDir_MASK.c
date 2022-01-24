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
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

qboolean FUNC3( const char *gamedir ) {
	if ( !FUNC1( gamedir, "." ) || !FUNC1( gamedir, ".." )
		|| !FUNC1( gamedir, "/" ) || !FUNC1( gamedir, "\\" )
		|| FUNC2( gamedir, "/.." ) || FUNC2( gamedir, "\\.." )
		|| FUNC0( gamedir ) ) {
		return qtrue;
	}

	return qfalse;
}