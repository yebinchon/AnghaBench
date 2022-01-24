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
struct sockaddr_s {int /*<<< orphan*/  sa_family; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int*,int*,int*,int*,int*) ; 

int FUNC3( char *string, struct sockaddr_s *addr ){
	int ha1, ha2, ha3, ha4, hp;
	int ipaddr;

	FUNC2( string, "%d.%d.%d.%d:%d", &ha1, &ha2, &ha3, &ha4, &hp );
	ipaddr = ( ha1 << 24 ) | ( ha2 << 16 ) | ( ha3 << 8 ) | ha4;

	addr->sa_family = AF_INET;
	( (struct sockaddr_in *)addr )->sin_addr.s_addr = FUNC0( ipaddr );
	( (struct sockaddr_in *)addr )->sin_port = FUNC1( (u_short)hp );
	return 0;
}