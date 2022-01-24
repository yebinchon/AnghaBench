#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int socket; int /*<<< orphan*/  addr; } ;
typedef  TYPE_1__ socket_t ;
typedef  int /*<<< orphan*/  sockaddr_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

socket_t *FUNC4( socket_t *sock ){
	int newsocket;
	sockaddr_t sendaddr;
	socket_t *newsock;

	newsocket = FUNC1( sock->socket, &sendaddr );
	if ( newsocket == -1 ) {
		return NULL;
	}

	newsock = FUNC0();
	if ( newsock == NULL ) {
		FUNC2( newsocket );
		return NULL;
	} //end if
	newsock->socket = newsocket;
	FUNC3( &newsock->addr, &sendaddr, sizeof( sockaddr_t ) );
	//
	return newsock;
}