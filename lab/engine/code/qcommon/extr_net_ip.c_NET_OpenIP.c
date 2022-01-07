
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {int integer; } ;
struct TYPE_11__ {int string; } ;
struct TYPE_10__ {int string; } ;
struct TYPE_9__ {int integer; } ;
struct TYPE_8__ {int integer; } ;
struct TYPE_7__ {scalar_t__ integer; } ;


 int Com_Printf (char*) ;
 int Cvar_SetValue (char*,int) ;
 int EAFNOSUPPORT ;
 scalar_t__ INVALID_SOCKET ;
 int NET_ENABLEV4 ;
 int NET_ENABLEV6 ;
 int NET_GetLocalAddress () ;
 scalar_t__ NET_IP6Socket (int ,int,int *,int*) ;
 scalar_t__ NET_IPSocket (int ,int,int*) ;
 int NET_OpenSocks (int) ;
 int boundto ;
 scalar_t__ ip6_socket ;
 scalar_t__ ip_socket ;
 TYPE_6__* net_enabled ;
 TYPE_5__* net_ip ;
 TYPE_4__* net_ip6 ;
 TYPE_3__* net_port ;
 TYPE_2__* net_port6 ;
 TYPE_1__* net_socksEnabled ;

void NET_OpenIP( void ) {
 int i;
 int err;
 int port;
 int port6;

 port = net_port->integer;
 port6 = net_port6->integer;

 NET_GetLocalAddress();





 if(net_enabled->integer & NET_ENABLEV6)
 {
  for( i = 0 ; i < 10 ; i++ )
  {
   ip6_socket = NET_IP6Socket(net_ip6->string, port6 + i, &boundto, &err);
   if (ip6_socket != INVALID_SOCKET)
   {
    Cvar_SetValue( "net_port6", port6 + i );
    break;
   }
   else
   {
    if(err == EAFNOSUPPORT)
     break;
   }
  }
  if(ip6_socket == INVALID_SOCKET)
   Com_Printf( "WARNING: Couldn't bind to a v6 ip address.\n");
 }

 if(net_enabled->integer & NET_ENABLEV4)
 {
  for( i = 0 ; i < 10 ; i++ ) {
   ip_socket = NET_IPSocket( net_ip->string, port + i, &err );
   if (ip_socket != INVALID_SOCKET) {
    Cvar_SetValue( "net_port", port + i );

    if (net_socksEnabled->integer)
     NET_OpenSocks( port + i );

    break;
   }
   else
   {
    if(err == EAFNOSUPPORT)
     break;
   }
  }

  if(ip_socket == INVALID_SOCKET)
   Com_Printf( "WARNING: Couldn't bind to a v4 ip address.\n");
 }
}
