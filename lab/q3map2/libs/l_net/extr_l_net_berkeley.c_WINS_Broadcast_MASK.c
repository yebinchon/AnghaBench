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
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  broadcastaddr ; 
 int net_broadcastsocket ; 

int FUNC4( int socket, byte *buf, int len ){
	int ret;

	if ( socket != net_broadcastsocket ) {
		if ( net_broadcastsocket != 0 ) {
			FUNC2( "Attempted to use multiple broadcasts sockets\n" );
		}
		ret = FUNC0( socket );
		if ( ret == -1 ) {
			FUNC3( "Unable to make socket broadcast capable\n" );
			return ret;
		}
	}

	return FUNC1( socket, buf, len, &broadcastaddr );
}