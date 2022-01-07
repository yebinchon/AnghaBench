
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct sockaddr_in {int sin_zero; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int qboolean ;
struct TYPE_7__ {int* ip; short port; int type; } ;
typedef TYPE_1__ netadr_t ;
struct TYPE_8__ {int* data; int maxsize; int readcount; int cursize; } ;
typedef TYPE_2__ msg_t ;
typedef int from ;
typedef int fd_set ;


 int Com_Printf (char*,int ) ;
 int EAGAIN ;
 int ECONNRESET ;
 scalar_t__ FD_ISSET (scalar_t__,int *) ;
 scalar_t__ INVALID_SOCKET ;
 int NA_IP ;
 int NET_AdrToString (TYPE_1__) ;
 int NET_ErrorString () ;
 int SOCKET_ERROR ;
 int SockadrToNetadr (struct sockaddr*,TYPE_1__*) ;
 scalar_t__ ip6_socket ;
 scalar_t__ ip_socket ;
 scalar_t__ memcmp (struct sockaddr_storage*,int *,int) ;
 int memset (int ,int ,int) ;
 scalar_t__ multicast6_socket ;
 int qfalse ;
 int qtrue ;
 int recvfrom (scalar_t__,void*,int,int ,struct sockaddr*,int*) ;
 int socketError ;
 int socksRelayAddr ;
 scalar_t__ usingSocks ;

qboolean NET_GetPacket(netadr_t *net_from, msg_t *net_message, fd_set *fdr)
{
 int ret;
 struct sockaddr_storage from;
 socklen_t fromlen;
 int err;

 if(ip_socket != INVALID_SOCKET && FD_ISSET(ip_socket, fdr))
 {
  fromlen = sizeof(from);
  ret = recvfrom( ip_socket, (void *)net_message->data, net_message->maxsize, 0, (struct sockaddr *) &from, &fromlen );

  if (ret == SOCKET_ERROR)
  {
   err = socketError;

   if( err != EAGAIN && err != ECONNRESET )
    Com_Printf( "NET_GetPacket: %s\n", NET_ErrorString() );
  }
  else
  {

   memset( ((struct sockaddr_in *)&from)->sin_zero, 0, 8 );

   if ( usingSocks && memcmp( &from, &socksRelayAddr, fromlen ) == 0 ) {
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
    SockadrToNetadr( (struct sockaddr *) &from, net_from );
    net_message->readcount = 0;
   }

   if( ret >= net_message->maxsize ) {
    Com_Printf( "Oversize packet from %s\n", NET_AdrToString (*net_from) );
    return qfalse;
   }

   net_message->cursize = ret;
   return qtrue;
  }
 }

 if(ip6_socket != INVALID_SOCKET && FD_ISSET(ip6_socket, fdr))
 {
  fromlen = sizeof(from);
  ret = recvfrom(ip6_socket, (void *)net_message->data, net_message->maxsize, 0, (struct sockaddr *) &from, &fromlen);

  if (ret == SOCKET_ERROR)
  {
   err = socketError;

   if( err != EAGAIN && err != ECONNRESET )
    Com_Printf( "NET_GetPacket: %s\n", NET_ErrorString() );
  }
  else
  {
   SockadrToNetadr((struct sockaddr *) &from, net_from);
   net_message->readcount = 0;

   if(ret >= net_message->maxsize)
   {
    Com_Printf( "Oversize packet from %s\n", NET_AdrToString (*net_from) );
    return qfalse;
   }

   net_message->cursize = ret;
   return qtrue;
  }
 }

 if(multicast6_socket != INVALID_SOCKET && multicast6_socket != ip6_socket && FD_ISSET(multicast6_socket, fdr))
 {
  fromlen = sizeof(from);
  ret = recvfrom(multicast6_socket, (void *)net_message->data, net_message->maxsize, 0, (struct sockaddr *) &from, &fromlen);

  if (ret == SOCKET_ERROR)
  {
   err = socketError;

   if( err != EAGAIN && err != ECONNRESET )
    Com_Printf( "NET_GetPacket: %s\n", NET_ErrorString() );
  }
  else
  {
   SockadrToNetadr((struct sockaddr *) &from, net_from);
   net_message->readcount = 0;

   if(ret >= net_message->maxsize)
   {
    Com_Printf( "Oversize packet from %s\n", NET_AdrToString (*net_from) );
    return qfalse;
   }

   net_message->cursize = ret;
   return qtrue;
  }
 }


 return qfalse;
}
