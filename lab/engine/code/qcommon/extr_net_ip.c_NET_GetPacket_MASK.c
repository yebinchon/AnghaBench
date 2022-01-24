#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_zero; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_7__ {int* ip; short port; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ netadr_t ;
struct TYPE_8__ {int* data; int maxsize; int readcount; int cursize; } ;
typedef  TYPE_2__ msg_t ;
typedef  int /*<<< orphan*/  from ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int ECONNRESET ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ INVALID_SOCKET ; 
 int /*<<< orphan*/  NA_IP ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int SOCKET_ERROR ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr*,TYPE_1__*) ; 
 scalar_t__ ip6_socket ; 
 scalar_t__ ip_socket ; 
 scalar_t__ FUNC5 (struct sockaddr_storage*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ multicast6_socket ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int FUNC7 (scalar_t__,void*,int,int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int socketError ; 
 int /*<<< orphan*/  socksRelayAddr ; 
 scalar_t__ usingSocks ; 

qboolean FUNC8(netadr_t *net_from, msg_t *net_message, fd_set *fdr)
{
	int 	ret;
	struct sockaddr_storage from;
	socklen_t	fromlen;
	int		err;
	
	if(ip_socket != INVALID_SOCKET && FUNC1(ip_socket, fdr))
	{
		fromlen = sizeof(from);
		ret = FUNC7( ip_socket, (void *)net_message->data, net_message->maxsize, 0, (struct sockaddr *) &from, &fromlen );
		
		if (ret == SOCKET_ERROR)
		{
			err = socketError;

			if( err != EAGAIN && err != ECONNRESET )
				FUNC0( "NET_GetPacket: %s\n", FUNC3() );
		}
		else
		{

			FUNC6( ((struct sockaddr_in *)&from)->sin_zero, 0, 8 );
		
			if ( usingSocks && FUNC5( &from, &socksRelayAddr, fromlen ) == 0 ) {
				if ( ret < 10 || net_message->data[0] != 0 || net_message->data[1] != 0 || net_message->data[2] != 0 || net_message->data[3] != 1 ) {
					return qfalse;
				}
				net_from->type = NA_IP;
				net_from->ip[0] = net_message->data[4];
				net_from->ip[1] = net_message->data[5];
				net_from->ip[2] = net_message->data[6];
				net_from->ip[3] = net_message->data[7];
				net_from->port = *(short *)&net_message->data[8];
				net_message->readcount = 10;
			}
			else {
				FUNC4( (struct sockaddr *) &from, net_from );
				net_message->readcount = 0;
			}
		
			if( ret >= net_message->maxsize ) {
				FUNC0( "Oversize packet from %s\n", FUNC2 (*net_from) );
				return qfalse;
			}
			
			net_message->cursize = ret;
			return qtrue;
		}
	}
	
	if(ip6_socket != INVALID_SOCKET && FUNC1(ip6_socket, fdr))
	{
		fromlen = sizeof(from);
		ret = FUNC7(ip6_socket, (void *)net_message->data, net_message->maxsize, 0, (struct sockaddr *) &from, &fromlen);
		
		if (ret == SOCKET_ERROR)
		{
			err = socketError;

			if( err != EAGAIN && err != ECONNRESET )
				FUNC0( "NET_GetPacket: %s\n", FUNC3() );
		}
		else
		{
			FUNC4((struct sockaddr *) &from, net_from);
			net_message->readcount = 0;
		
			if(ret >= net_message->maxsize)
			{
				FUNC0( "Oversize packet from %s\n", FUNC2 (*net_from) );
				return qfalse;
			}
			
			net_message->cursize = ret;
			return qtrue;
		}
	}

	if(multicast6_socket != INVALID_SOCKET && multicast6_socket != ip6_socket && FUNC1(multicast6_socket, fdr))
	{
		fromlen = sizeof(from);
		ret = FUNC7(multicast6_socket, (void *)net_message->data, net_message->maxsize, 0, (struct sockaddr *) &from, &fromlen);
		
		if (ret == SOCKET_ERROR)
		{
			err = socketError;

			if( err != EAGAIN && err != ECONNRESET )
				FUNC0( "NET_GetPacket: %s\n", FUNC3() );
		}
		else
		{
			FUNC4((struct sockaddr *) &from, net_from);
			net_message->readcount = 0;
		
			if(ret >= net_message->maxsize)
			{
				FUNC0( "Oversize packet from %s\n", FUNC2 (*net_from) );
				return qfalse;
			}
			
			net_message->cursize = ret;
			return qtrue;
		}
	}
	
	
	return qfalse;
}