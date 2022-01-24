#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_short ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
typedef  int /*<<< orphan*/  address ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 scalar_t__ SOCKET_ERROR ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (int,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10( int port ){
	int newsocket;
	struct sockaddr_in address;
	BOOL _true = 0xFFFFFFFF;

	//IPPROTO_TCP
	//
	if ( ( newsocket = FUNC9( AF_INET, SOCK_STREAM, 0 ) ) == -1 ) {
		FUNC2( "WINS_OpenReliableSocket: %s\n", FUNC0( FUNC1() ) );
		return -1;
	} //end if

	FUNC7( (char *) &address, 0, sizeof( address ) );
	address.sin_family = AF_INET;
	address.sin_addr.s_addr = FUNC5( INADDR_ANY );
	address.sin_port = FUNC6( (u_short)port );
	if ( FUNC3( newsocket, (void *)&address, sizeof( address ) ) == -1 ) {
		FUNC2( "WINS_OpenReliableSocket: %s\n", FUNC0( FUNC1() ) );
		FUNC4( newsocket );
		return -1;
	} //end if

	//
	if ( FUNC8( newsocket, IPPROTO_TCP, TCP_NODELAY, (void *) &_true, sizeof( int ) ) == SOCKET_ERROR ) {
		FUNC2( "WINS_OpenReliableSocket: %s\n", FUNC0( FUNC1() ) );
		FUNC2( "setsockopt error\n" );
	} //end if

	return newsocket;
}