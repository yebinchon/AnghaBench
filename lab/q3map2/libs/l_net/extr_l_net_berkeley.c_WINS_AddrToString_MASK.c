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
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,int,int,int,int) ; 

char *FUNC3( struct sockaddr_s *addr ){
	static char buffer[22];
	int haddr;

	haddr = FUNC0( ( (struct sockaddr_in *)addr )->sin_addr.s_addr );
	FUNC2( buffer, "%d.%d.%d.%d:%d", ( haddr >> 24 ) & 0xff, ( haddr >> 16 ) & 0xff, ( haddr >> 8 ) & 0xff, haddr & 0xff, FUNC1( ( (struct sockaddr_in *)addr )->sin_port ) );
	return buffer;
}