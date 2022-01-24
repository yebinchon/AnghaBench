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
 int KEYCATCH_CONSOLE ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

__attribute__((used)) static qboolean FUNC2( const char *cmd ) {
	if ( FUNC0( ) & KEYCATCH_CONSOLE )
		return qfalse;

	if ( !FUNC1( cmd, "toggleconsole" ) )
		return qtrue;
	if ( !FUNC1( cmd, "togglemenu" ) )
		return qtrue;

	return qfalse;
}