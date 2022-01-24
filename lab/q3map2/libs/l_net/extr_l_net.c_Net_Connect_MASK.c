#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int socket; int /*<<< orphan*/  addr; } ;
typedef  TYPE_1__ socket_t ;
typedef  int /*<<< orphan*/  sockaddr_t ;
struct TYPE_8__ {int /*<<< orphan*/  ip; } ;
typedef  TYPE_2__ address_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

socket_t *FUNC8( address_t *address, int port ){
	int newsock;
	socket_t *sock;
	sockaddr_t sendaddr;

	// see if we can resolve the host name
	FUNC5( address->ip, &sendaddr );

	newsock = FUNC4( port );
	if ( newsock == -1 ) {
		return NULL;
	}

	sock = FUNC0();
	if ( sock == NULL ) {
		FUNC2( newsock );
		return NULL;
	} //end if
	sock->socket = newsock;

	//connect to the host
	if ( FUNC3( newsock, &sendaddr ) == -1 ) {
		FUNC1( sock );
		FUNC2( newsock );
		FUNC6( "Net_Connect: error connecting\n" );
		return NULL;
	} //end if

	FUNC7( &sock->addr, &sendaddr, sizeof( sockaddr_t ) );
	//now we can send messages
	//
	return sock;
}