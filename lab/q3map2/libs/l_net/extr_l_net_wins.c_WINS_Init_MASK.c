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
struct sockaddr_s {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct hostent {scalar_t__* h_addr_list; } ;
typedef  int /*<<< orphan*/  WORD ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ DEFAULTnet_hostport ; 
 int /*<<< orphan*/  INADDR_BROADCAST ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int MAXHOSTNAMELEN ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_s*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct sockaddr_s*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  broadcastaddr ; 
 struct hostent* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int myAddr ; 
 int /*<<< orphan*/  my_tcpip_address ; 
 int net_controlsocket ; 
 scalar_t__ net_hostport ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC11 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  winsockdata ; 

int FUNC12( void ){
	int i;
	struct hostent *local;
	char buff[MAXHOSTNAMELEN];
	struct sockaddr_s addr;
	char    *p;
	int r;
	WORD wVersionRequested;

	wVersionRequested = FUNC0( 1, 1 );

	r = FUNC4( wVersionRequested, &winsockdata );

	if ( r ) {
		FUNC6( "Winsock initialization failed.\n" );
		return -1;
	}

	/*
	   i = COM_CheckParm ("-udpport");
	   if (i == 0)*/
	net_hostport = DEFAULTnet_hostport;
	/*
	   else if (i < com_argc-1)
	    net_hostport = Q_atoi (com_argv[i+1]);
	   else
	    Sys_Error ("WINS_Init: you must specify a number after -udpport");
	 */

	// determine my name & address
	FUNC8( buff, MAXHOSTNAMELEN );
	local = FUNC7( buff );
	myAddr = *(int *)local->h_addr_list[0];

	// if the quake hostname isn't set, set it to the machine name
//	if (Q_strcmp(hostname.string, "UNNAMED") == 0)
	{
		// see if it's a text IP address (well, close enough)
		for ( p = buff; *p; p++ )
			if ( ( *p < '0' || *p > '9' ) && *p != '.' ) {
				break;
			}

		// if it is a real name, strip off the domain; we only want the host
		if ( *p ) {
			for ( i = 0; i < 15; i++ )
				if ( buff[i] == '.' ) {
					break;
				}
			buff[i] = 0;
		}
//		Cvar_Set ("hostname", buff);
	}

	if ( ( net_controlsocket = FUNC3( 0 ) ) == -1 ) {
		FUNC5( "WINS_Init: Unable to open control socket\n" );
	}

	( (struct sockaddr_in *)&broadcastaddr )->sin_family = AF_INET;
	( (struct sockaddr_in *)&broadcastaddr )->sin_addr.s_addr = INADDR_BROADCAST;
	( (struct sockaddr_in *)&broadcastaddr )->sin_port = FUNC9( (u_short)net_hostport );

	FUNC2( net_controlsocket, &addr );
	FUNC10( my_tcpip_address,  FUNC1( &addr ) );
	p = FUNC11( my_tcpip_address, ':' );
	if ( p ) {
		*p = 0;
	}
	FUNC6( "Winsock Initialized\n" );

	return net_controlsocket;
}