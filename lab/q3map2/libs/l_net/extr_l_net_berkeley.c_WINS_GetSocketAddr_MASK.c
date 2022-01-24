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
struct sockaddr_s {int dummy; } ;
struct TYPE_2__ {unsigned int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct sockaddr*,int*) ; 
 unsigned int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_s*,int /*<<< orphan*/ ,int) ; 
 unsigned int myAddr ; 

int FUNC3( int socket, struct sockaddr_s *addr ){
	socklen_t addrlen = sizeof( struct sockaddr_s );
	unsigned int a;

	FUNC2( addr, 0, sizeof( struct sockaddr_s ) );
	FUNC0( socket, (struct sockaddr *)addr, &addrlen );
	a = ( (struct sockaddr_in *)addr )->sin_addr.s_addr;
	if ( a == 0 || a == FUNC1( "127.0.0.1" ) ) {
		( (struct sockaddr_in *)addr )->sin_addr.s_addr = myAddr;
	}

	return 0;
}