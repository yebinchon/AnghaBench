
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_20__ {scalar_t__ overflowed; int allowoverflow; } ;
typedef TYPE_3__ msg_t ;
typedef int msg_buf ;
struct TYPE_21__ {int name; int lastClientCommand; TYPE_2__* gentity; } ;
typedef TYPE_4__ client_t ;
typedef int byte ;
struct TYPE_18__ {int svFlags; } ;
struct TYPE_19__ {TYPE_1__ r; } ;


 int Com_Printf (char*,int ) ;
 int MAX_MSGLEN ;
 int MSG_Clear (TYPE_3__*) ;
 int MSG_Init (TYPE_3__*,int *,int) ;
 int MSG_WriteLong (TYPE_3__*,int ) ;
 int SVF_BOT ;
 int SV_BuildClientSnapshot (TYPE_4__*) ;
 int SV_SendMessageToClient (TYPE_3__*,TYPE_4__*) ;
 int SV_UpdateServerCommandsToClient (TYPE_4__*,TYPE_3__*) ;
 int SV_WriteSnapshotToClient (TYPE_4__*,TYPE_3__*) ;
 int SV_WriteVoipToClient (TYPE_4__*,TYPE_3__*) ;
 int qtrue ;

void SV_SendClientSnapshot( client_t *client ) {
 byte msg_buf[MAX_MSGLEN];
 msg_t msg;


 SV_BuildClientSnapshot( client );



 if ( client->gentity && client->gentity->r.svFlags & SVF_BOT ) {
  return;
 }

 MSG_Init (&msg, msg_buf, sizeof(msg_buf));
 msg.allowoverflow = qtrue;



 MSG_WriteLong( &msg, client->lastClientCommand );


 SV_UpdateServerCommandsToClient( client, &msg );



 SV_WriteSnapshotToClient( client, &msg );






 if ( msg.overflowed ) {
  Com_Printf ("WARNING: msg overflowed for %s\n", client->name);
  MSG_Clear (&msg);
 }

 SV_SendMessageToClient( &msg, client );
}
