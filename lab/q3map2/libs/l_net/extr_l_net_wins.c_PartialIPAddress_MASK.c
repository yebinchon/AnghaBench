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
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int myAddr ; 
 scalar_t__ net_hostport ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static int FUNC3( char *in, struct sockaddr_s *hostaddr ){
	char buff[256];
	char *b;
	int addr;
	int num;
	int mask;

	buff[0] = '.';
	b = buff;
	FUNC2( buff + 1, in );
	if ( buff[1] == '.' ) {
		b++;
	}

	addr = 0;
	mask = -1;
	while ( *b == '.' )
	{
		num = 0;
		if ( *++b < '0' || *b > '9' ) {
			return -1;
		}
		while ( !( *b < '0' || *b > '9' ) )
			num = num * 10 + *( b++ ) - '0';
		mask <<= 8;
		addr = ( addr << 8 ) + num;
	}

	hostaddr->sa_family = AF_INET;
	( (struct sockaddr_in *)hostaddr )->sin_port = FUNC1( (u_short)net_hostport );
	( (struct sockaddr_in *)hostaddr )->sin_addr.s_addr = ( myAddr & FUNC0( mask ) ) | FUNC0( addr );

	return 0;
}