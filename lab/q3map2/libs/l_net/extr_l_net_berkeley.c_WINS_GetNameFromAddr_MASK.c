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
struct sockaddr_in {int /*<<< orphan*/  sin_addr; } ;
struct in_addr {int dummy; } ;
struct hostent {scalar_t__ h_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ NET_NAMELEN ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr_s*) ; 
 struct hostent* FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,scalar_t__) ; 

int FUNC4( struct sockaddr_s *addr, char *name ){
	struct hostent *hostentry;

	hostentry = FUNC1( (char *)&( (struct sockaddr_in *)addr )->sin_addr, sizeof( struct in_addr ), AF_INET );
	if ( hostentry ) {
		FUNC3( name, (char *)hostentry->h_name, NET_NAMELEN - 1 );
		return 0;
	}

	FUNC2( name, FUNC0( addr ) );
	return 0;
}