
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {scalar_t__ sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int ioctlarg_t ;
typedef int i ;
typedef int address ;
typedef int SOCKET ;


 int AF_INET ;
 int Com_Printf (char*,...) ;
 int FIONBIO ;
 int INADDR_ANY ;
 int INVALID_SOCKET ;
 int IPPROTO_UDP ;
 int NET_ErrorString () ;
 int PF_INET ;
 int PORT_ANY ;
 scalar_t__ SOCKET_ERROR ;
 int SOCK_DGRAM ;
 int SOL_SOCKET ;
 int SO_BROADCAST ;
 int Sys_StringToSockaddr (char*,struct sockaddr*,int,int ) ;
 scalar_t__ bind (int ,void*,int) ;
 int closesocket (int ) ;
 scalar_t__ htons (short) ;
 scalar_t__ ioctlsocket (int ,int ,int*) ;
 scalar_t__ setsockopt (int ,int ,int ,char*,int) ;
 int socket (int ,int ,int ) ;
 int socketError ;

SOCKET NET_IPSocket( char *net_interface, int port, int *err ) {
 SOCKET newsocket;
 struct sockaddr_in address;
 ioctlarg_t _true = 1;
 int i = 1;

 *err = 0;

 if( net_interface ) {
  Com_Printf( "Opening IP socket: %s:%i\n", net_interface, port );
 }
 else {
  Com_Printf( "Opening IP socket: 0.0.0.0:%i\n", port );
 }

 if( ( newsocket = socket( PF_INET, SOCK_DGRAM, IPPROTO_UDP ) ) == INVALID_SOCKET ) {
  *err = socketError;
  Com_Printf( "WARNING: NET_IPSocket: socket: %s\n", NET_ErrorString() );
  return newsocket;
 }

 if( ioctlsocket( newsocket, FIONBIO, &_true ) == SOCKET_ERROR ) {
  Com_Printf( "WARNING: NET_IPSocket: ioctl FIONBIO: %s\n", NET_ErrorString() );
  *err = socketError;
  closesocket(newsocket);
  return INVALID_SOCKET;
 }


 if( setsockopt( newsocket, SOL_SOCKET, SO_BROADCAST, (char *) &i, sizeof(i) ) == SOCKET_ERROR ) {
  Com_Printf( "WARNING: NET_IPSocket: setsockopt SO_BROADCAST: %s\n", NET_ErrorString() );
 }

 if( !net_interface || !net_interface[0]) {
  address.sin_family = AF_INET;
  address.sin_addr.s_addr = INADDR_ANY;
 }
 else
 {
  if(!Sys_StringToSockaddr( net_interface, (struct sockaddr *)&address, sizeof(address), AF_INET))
  {
   closesocket(newsocket);
   return INVALID_SOCKET;
  }
 }

 if( port == PORT_ANY ) {
  address.sin_port = 0;
 }
 else {
  address.sin_port = htons( (short)port );
 }

 if( bind( newsocket, (void *)&address, sizeof(address) ) == SOCKET_ERROR ) {
  Com_Printf( "WARNING: NET_IPSocket: bind: %s\n", NET_ErrorString() );
  *err = socketError;
  closesocket( newsocket );
  return INVALID_SOCKET;
 }

 return newsocket;
}
