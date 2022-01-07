
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {size_t size; int * data; scalar_t__ read; } ;
struct TYPE_8__ {int remaining; TYPE_4__ msg; int socket; } ;
typedef TYPE_1__ socket_t ;
struct TYPE_9__ {int size; } ;
typedef TYPE_2__ netmessage_t ;


 int MAX_NETMESSAGE ;
 int NMSG_ReadLong (TYPE_4__*) ;
 void* WINS_Read (int ,int *,int,int *) ;
 int WinPrint (char*,...) ;
 int memcpy (TYPE_2__*,TYPE_4__*,int) ;
 int printf (char*) ;

int Net_Receive( socket_t *sock, netmessage_t *msg ){
 int curread;

 if ( sock->remaining > 0 ) {
  curread = WINS_Read( sock->socket, &sock->msg.data[sock->msg.size], sock->remaining, ((void*)0) );
  if ( curread == -1 ) {
   WinPrint( "Net_Receive: read error\n" );
   return -1;
  }
  sock->remaining -= curread;
  sock->msg.size += curread;
  if ( sock->remaining <= 0 ) {
   sock->remaining = 0;
   memcpy( msg, &sock->msg, sizeof( netmessage_t ) );
   sock->msg.size = 0;
   return msg->size - 4;
  }
  return 0;
 }
 sock->msg.size = WINS_Read( sock->socket, sock->msg.data, 4, ((void*)0) );
 if ( sock->msg.size == 0 ) {
  return 0;
 }
 if ( sock->msg.size == -1 ) {
  WinPrint( "Net_Receive: size header read error\n" );
  return -1;
 }

 sock->msg.read = 0;
 sock->remaining = NMSG_ReadLong( &sock->msg );
 if ( sock->remaining == 0 ) {
  return 0;
 }
 if ( sock->remaining < 0 || sock->remaining > MAX_NETMESSAGE ) {
  WinPrint( "Net_Receive: invalid message size %d\n", sock->remaining );
  return -1;
 }

 curread = WINS_Read( sock->socket, &sock->msg.data[sock->msg.size], sock->remaining, ((void*)0) );
 if ( curread == -1 ) {
  WinPrint( "Net_Receive: read error\n" );
  return -1;
 }
 sock->remaining -= curread;
 sock->msg.size += curread;
 if ( sock->remaining <= 0 ) {
  sock->remaining = 0;
  memcpy( msg, &sock->msg, sizeof( netmessage_t ) );
  sock->msg.size = 0;
  return msg->size - 4;
 }




 return 0;
}
