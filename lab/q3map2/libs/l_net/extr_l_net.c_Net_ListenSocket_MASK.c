#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int socket; int /*<<< orphan*/  addr; } ;
typedef  TYPE_1__ socket_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

socket_t *FUNC7( int port ){
	int newsock;
	socket_t *sock;

	newsock = FUNC5( port );
	if ( newsock == -1 ) {
		return NULL;
	}

	if ( FUNC4( newsock ) == -1 ) {
		FUNC2( newsock );
		return NULL;
	} //end if
	sock = FUNC0();
	if ( sock == NULL ) {
		FUNC2( newsock );
		return NULL;
	} //end if
	sock->socket = newsock;
	FUNC3( newsock, &sock->addr );
	FUNC6( "listen socket opened at %s\n", FUNC1( &sock->addr ) );
	//
	return sock;
}