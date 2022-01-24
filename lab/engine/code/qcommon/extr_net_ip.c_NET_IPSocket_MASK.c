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
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {scalar_t__ sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int ioctlarg_t ;
typedef  int /*<<< orphan*/  i ;
typedef  int /*<<< orphan*/  address ;
typedef  int /*<<< orphan*/  SOCKET ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FIONBIO ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  INVALID_SOCKET ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  PF_INET ; 
 int PORT_ANY ; 
 scalar_t__ SOCKET_ERROR ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_BROADCAST ; 
 int /*<<< orphan*/  FUNC2 (char*,struct sockaddr*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (short) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int socketError ; 

SOCKET FUNC9( char *net_interface, int port, int *err ) {
	SOCKET				newsocket;
	struct sockaddr_in	address;
	ioctlarg_t			_true = 1;
	int					i = 1;

	*err = 0;

	if( net_interface ) {
		FUNC0( "Opening IP socket: %s:%i\n", net_interface, port );
	}
	else {
		FUNC0( "Opening IP socket: 0.0.0.0:%i\n", port );
	}

	if( ( newsocket = FUNC8( PF_INET, SOCK_DGRAM, IPPROTO_UDP ) ) == INVALID_SOCKET ) {
		*err = socketError;
		FUNC0( "WARNING: NET_IPSocket: socket: %s\n", FUNC1() );
		return newsocket;
	}
	// make it non-blocking
	if( FUNC6( newsocket, FIONBIO, &_true ) == SOCKET_ERROR ) {
		FUNC0( "WARNING: NET_IPSocket: ioctl FIONBIO: %s\n", FUNC1() );
		*err = socketError;
		FUNC4(newsocket);
		return INVALID_SOCKET;
	}

	// make it broadcast capable
	if( FUNC7( newsocket, SOL_SOCKET, SO_BROADCAST, (char *) &i, sizeof(i) ) == SOCKET_ERROR ) {
		FUNC0( "WARNING: NET_IPSocket: setsockopt SO_BROADCAST: %s\n", FUNC1() );
	}

	if( !net_interface || !net_interface[0]) {
		address.sin_family = AF_INET;
		address.sin_addr.s_addr = INADDR_ANY;
	}
	else
	{
		if(!FUNC2( net_interface, (struct sockaddr *)&address, sizeof(address), AF_INET))
		{
			FUNC4(newsocket);
			return INVALID_SOCKET;
		}
	}

	if( port == PORT_ANY ) {
		address.sin_port = 0;
	}
	else {
		address.sin_port = FUNC5( (short)port );
	}

	if( FUNC3( newsocket, (void *)&address, sizeof(address) ) == SOCKET_ERROR ) {
		FUNC0( "WARNING: NET_IPSocket: bind: %s\n", FUNC1() );
		*err = socketError;
		FUNC4( newsocket );
		return INVALID_SOCKET;
	}

	return newsocket;
}