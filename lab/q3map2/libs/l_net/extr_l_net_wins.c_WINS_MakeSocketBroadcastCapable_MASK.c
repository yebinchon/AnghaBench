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
typedef  int /*<<< orphan*/  i ;

/* Variables and functions */
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_BROADCAST ; 
 int net_broadcastsocket ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

int FUNC1( int socket ){
	int i = 1;

	// make this socket broadcast capable
	if ( FUNC0( socket, SOL_SOCKET, SO_BROADCAST, (char *)&i, sizeof( i ) ) < 0 ) {
		return -1;
	}
	net_broadcastsocket = socket;

	return 0;
}