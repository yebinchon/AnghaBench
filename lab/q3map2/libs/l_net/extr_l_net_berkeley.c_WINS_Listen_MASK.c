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

/* Variables and functions */
 int /*<<< orphan*/  FIONBIO ; 
 scalar_t__ SOCKET_ERROR ; 
 int /*<<< orphan*/  SOMAXCONN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ) ; 

int FUNC5( int socket ){
	u_long _true = 1;

	if ( FUNC3( socket, FIONBIO, &_true ) == -1 ) {
		FUNC2( "WINS_Listen: %s\n", FUNC0( FUNC1() ) );
		return -1;
	} //end if
	if ( FUNC4( socket, SOMAXCONN ) == SOCKET_ERROR ) {
		FUNC2( "WINS_Listen: %s\n", FUNC0( FUNC1() ) );
		return -1;
	} //end if
	return 0;
}