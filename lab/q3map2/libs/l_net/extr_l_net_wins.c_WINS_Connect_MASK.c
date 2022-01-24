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
typedef  int u_long ;
struct sockaddr_s {int dummy; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIONBIO ; 
 int SOCKET_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,struct sockaddr*,int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int*) ; 

int FUNC5( int socket, struct sockaddr_s *addr ){
	int ret;
	u_long _true2 = 0xFFFFFFFF;

	ret = FUNC3( socket, (struct sockaddr *)addr, sizeof( struct sockaddr_s ) );
	if ( ret == SOCKET_ERROR ) {
		FUNC2( "WINS_Connect: %s\n", FUNC0( FUNC1() ) );
		return -1;
	} //end if
	if ( FUNC4( socket, FIONBIO, &_true2 ) == -1 ) {
		FUNC2( "WINS_Connect: %s\n", FUNC0( FUNC1() ) );
		return -1;
	} //end if
	return 0;
}