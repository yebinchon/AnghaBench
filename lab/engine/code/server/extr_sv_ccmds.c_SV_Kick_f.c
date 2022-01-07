
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ type; } ;
struct TYPE_10__ {TYPE_1__ remoteAddress; } ;
struct TYPE_11__ {int lastPacketTime; TYPE_2__ netchan; int state; } ;
typedef TYPE_3__ client_t ;
struct TYPE_14__ {int integer; } ;
struct TYPE_13__ {int integer; } ;
struct TYPE_12__ {int time; TYPE_3__* clients; } ;


 int Cmd_Argc () ;
 int Cmd_Argv (int) ;
 int Com_Printf (char*) ;
 scalar_t__ NA_BOT ;
 scalar_t__ NA_LOOPBACK ;
 int Q_stricmp (int ,char*) ;
 int SV_DropClient (TYPE_3__*,char*) ;
 TYPE_3__* SV_GetPlayerByHandle () ;
 TYPE_6__* com_sv_running ;
 TYPE_5__* sv_maxclients ;
 TYPE_4__ svs ;

__attribute__((used)) static void SV_Kick_f( void ) {
 client_t *cl;
 int i;


 if ( !com_sv_running->integer ) {
  Com_Printf( "Server is not running.\n" );
  return;
 }

 if ( Cmd_Argc() != 2 ) {
  Com_Printf ("Usage: kick <player name>\nkick all = kick everyone\nkick allbots = kick all bots\n");
  return;
 }

 cl = SV_GetPlayerByHandle();
 if ( !cl ) {
  if ( !Q_stricmp(Cmd_Argv(1), "all") ) {
   for ( i=0, cl=svs.clients ; i < sv_maxclients->integer ; i++,cl++ ) {
    if ( !cl->state ) {
     continue;
    }
    if( cl->netchan.remoteAddress.type == NA_LOOPBACK ) {
     continue;
    }
    SV_DropClient( cl, "was kicked" );
    cl->lastPacketTime = svs.time;
   }
  }
  else if ( !Q_stricmp(Cmd_Argv(1), "allbots") ) {
   for ( i=0, cl=svs.clients ; i < sv_maxclients->integer ; i++,cl++ ) {
    if ( !cl->state ) {
     continue;
    }
    if( cl->netchan.remoteAddress.type != NA_BOT ) {
     continue;
    }
    SV_DropClient( cl, "was kicked" );
    cl->lastPacketTime = svs.time;
   }
  }
  return;
 }
 if( cl->netchan.remoteAddress.type == NA_LOOPBACK ) {
  Com_Printf("Cannot kick host player\n");
  return;
 }

 SV_DropClient( cl, "was kicked" );
 cl->lastPacketTime = svs.time;
}
