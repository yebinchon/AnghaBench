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
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 int SOCKET_ERROR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int qfalse ; 
 int FUNC3 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct sockaddr*,int) ; 

int FUNC5( int socket, byte *buf, int len, struct sockaddr_s *addr ){
	int ret = 0, written;

	if ( addr ) {
		written = 0;
		while ( written < len )
		{
			ret = FUNC4( socket, &buf[written], len - written, 0, (struct sockaddr *)addr, sizeof( struct sockaddr_s ) );
			if ( ret == SOCKET_ERROR ) {
				if ( FUNC1() != EAGAIN ) {
					return qfalse;
				}
				//++timo FIXME: what is this used for?
//				Sleep(1000);
			} //end if
			else
			{
				written += ret;
			}
		}
	} //end if
	else
	{
		written = 0;
		while ( written < len )
		{
			ret = FUNC3( socket, buf, len, 0 );
			if ( ret == SOCKET_ERROR ) {
				if ( FUNC1() != EAGAIN ) {
					return qfalse;
				}
				//++timo FIXME: what is this used for?
//				Sleep(1000);
			} //end if
			else
			{
				written += ret;
			}
		}
	} //end else
	if ( ret == SOCKET_ERROR ) {
		FUNC2( "WINS_Write: %s\n", FUNC0( FUNC1() ) );
	} //end if
	return ( ret == len );
}