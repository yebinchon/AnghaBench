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
struct sockaddr_s {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int BOOL ;

/* Variables and functions */
 int INVALID_SOCKET ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 scalar_t__ SOCKET_ERROR ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ WSAEWOULDBLOCK ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (int,struct sockaddr*,int*) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 

int FUNC5( int socket, struct sockaddr_s *addr ){
	int addrlen = sizeof( struct sockaddr_s );
	int newsocket;
	BOOL _true = 1;

	newsocket = FUNC3( socket, (struct sockaddr *)addr, &addrlen );
	if ( newsocket == INVALID_SOCKET ) {
		if ( FUNC1() == WSAEWOULDBLOCK ) {
			return -1;
		}
		FUNC2( "WINS_Accept: %s\n", FUNC0( FUNC1() ) );
		return -1;
	} //end if
	  //
	if ( FUNC4( newsocket, IPPROTO_TCP, TCP_NODELAY, (void *) &_true, sizeof( int ) ) == SOCKET_ERROR ) {
		FUNC2( "WINS_Accept: %s\n", FUNC0( FUNC1() ) );
		FUNC2( "setsockopt error\n" );
	} //end if
	return newsocket;
}