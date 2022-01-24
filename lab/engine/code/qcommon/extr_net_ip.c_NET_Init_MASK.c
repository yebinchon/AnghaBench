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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NET_Restart_f ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  winsockInitialized ; 
 int /*<<< orphan*/  winsockdata ; 

void FUNC5( void ) {
#ifdef _WIN32
	int		r;

	r = WSAStartup( MAKEWORD( 1, 1 ), &winsockdata );
	if( r ) {
		Com_Printf( "WARNING: Winsock initialization failed, returned %d\n", r );
		return;
	}

	winsockInitialized = qtrue;
	Com_Printf( "Winsock Initialized\n" );
#endif

	FUNC3( qtrue );
	
	FUNC0 ("net_restart", NET_Restart_f);
}