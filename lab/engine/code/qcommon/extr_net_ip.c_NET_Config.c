
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_2__ {scalar_t__ integer; } ;


 scalar_t__ INVALID_SOCKET ;
 scalar_t__ NET_GetCvars () ;
 int NET_OpenIP () ;
 int NET_SetMulticast6 () ;
 int closesocket (scalar_t__) ;
 scalar_t__ ip6_socket ;
 scalar_t__ ip_socket ;
 scalar_t__ multicast6_socket ;
 TYPE_1__* net_enabled ;
 scalar_t__ networkingEnabled ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 scalar_t__ socks_socket ;

void NET_Config( qboolean enableNetworking ) {
 qboolean modified;
 qboolean stop;
 qboolean start;


 modified = NET_GetCvars();

 if( !net_enabled->integer ) {
  enableNetworking = 0;
 }


 if( enableNetworking == networkingEnabled && !modified ) {
  return;
 }

 if( enableNetworking == networkingEnabled ) {
  if( enableNetworking ) {
   stop = qtrue;
   start = qtrue;
  }
  else {
   stop = qfalse;
   start = qfalse;
  }
 }
 else {
  if( enableNetworking ) {
   stop = qfalse;
   start = qtrue;
  }
  else {
   stop = qtrue;
   start = qfalse;
  }
  networkingEnabled = enableNetworking;
 }

 if( stop ) {
  if ( ip_socket != INVALID_SOCKET ) {
   closesocket( ip_socket );
   ip_socket = INVALID_SOCKET;
  }

  if(multicast6_socket != INVALID_SOCKET)
  {
   if(multicast6_socket != ip6_socket)
    closesocket(multicast6_socket);

   multicast6_socket = INVALID_SOCKET;
  }

  if ( ip6_socket != INVALID_SOCKET ) {
   closesocket( ip6_socket );
   ip6_socket = INVALID_SOCKET;
  }

  if ( socks_socket != INVALID_SOCKET ) {
   closesocket( socks_socket );
   socks_socket = INVALID_SOCKET;
  }

 }

 if( start )
 {
  if (net_enabled->integer)
  {
   NET_OpenIP();
   NET_SetMulticast6();
  }
 }
}
