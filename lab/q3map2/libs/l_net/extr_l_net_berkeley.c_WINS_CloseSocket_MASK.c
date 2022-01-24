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
 scalar_t__ SOCKET_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4( int socket ){
	/*
	   if (socket == net_broadcastsocket)
	    net_broadcastsocket = 0;
	 */
//	shutdown(socket, SD_SEND);

	if ( FUNC3( socket ) == SOCKET_ERROR ) {
		FUNC2( "WINS_CloseSocket: %s\n", FUNC0( FUNC1() ) );
		return SOCKET_ERROR;
	} //end if
	return 0;
}