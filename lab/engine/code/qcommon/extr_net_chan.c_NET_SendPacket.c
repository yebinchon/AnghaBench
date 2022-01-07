
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ netsrc_t ;
struct TYPE_9__ {scalar_t__ type; } ;
typedef TYPE_1__ netadr_t ;
struct TYPE_12__ {scalar_t__ integer; } ;
struct TYPE_11__ {scalar_t__ integer; } ;
struct TYPE_10__ {scalar_t__ integer; } ;


 int Com_Printf (char*,int) ;
 scalar_t__ NA_BAD ;
 scalar_t__ NA_BOT ;
 scalar_t__ NA_LOOPBACK ;
 int NET_QueuePacket (int,void const*,TYPE_1__,scalar_t__) ;
 int NET_SendLoopPacket (scalar_t__,int,void const*,TYPE_1__) ;
 scalar_t__ NS_CLIENT ;
 scalar_t__ NS_SERVER ;
 int Sys_SendPacket (int,void const*,TYPE_1__) ;
 TYPE_4__* cl_packetdelay ;
 TYPE_3__* showpackets ;
 TYPE_2__* sv_packetdelay ;

void NET_SendPacket( netsrc_t sock, int length, const void *data, netadr_t to ) {


 if ( showpackets->integer && *(int *)data == -1 ) {
  Com_Printf ("send packet %4i\n", length);
 }

 if ( to.type == NA_LOOPBACK ) {
  NET_SendLoopPacket (sock, length, data, to);
  return;
 }
 if ( to.type == NA_BOT ) {
  return;
 }
 if ( to.type == NA_BAD ) {
  return;
 }

 if ( sock == NS_CLIENT && cl_packetdelay->integer > 0 ) {
  NET_QueuePacket( length, data, to, cl_packetdelay->integer );
 }
 else if ( sock == NS_SERVER && sv_packetdelay->integer > 0 ) {
  NET_QueuePacket( length, data, to, sv_packetdelay->integer );
 }
 else {
  Sys_SendPacket( length, data, to );
 }
}
