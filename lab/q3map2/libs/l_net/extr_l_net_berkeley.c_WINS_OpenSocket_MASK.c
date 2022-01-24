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
typedef  int u_long ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
typedef  int /*<<< orphan*/  address ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FIONBIO ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  PF_INET ; 
 int SOCKET_ERROR ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9( int port ){
	int newsocket;
	struct sockaddr_in address;
	u_long _true = 1;

	if ( ( newsocket = FUNC8( PF_INET, SOCK_DGRAM, IPPROTO_UDP ) ) == SOCKET_ERROR ) {
		FUNC2( "WINS_OpenSocket: %s\n", FUNC0( FUNC1() ) );
		return -1;
	} //end if

	if ( FUNC6( newsocket, FIONBIO, &_true ) == SOCKET_ERROR ) {
		FUNC2( "WINS_OpenSocket: %s\n", FUNC0( FUNC1() ) );
		FUNC4( newsocket );
		return -1;
	} //end if

	FUNC7( (char *) &address, 0, sizeof( address ) );
	address.sin_family = AF_INET;
	address.sin_addr.s_addr = INADDR_ANY;
	address.sin_port = FUNC5( (u_short)port );
	if ( FUNC3( newsocket, (void *)&address, sizeof( address ) ) == -1 ) {
		FUNC2( "WINS_OpenSocket: %s\n", FUNC0( FUNC1() ) );
		FUNC4( newsocket );
		return -1;
	} //end if

	return newsocket;
}