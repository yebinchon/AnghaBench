
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int msg_t ;
struct TYPE_10__ {scalar_t__ state; scalar_t__ oldServerTime; int name; void* gamestateMessageNum; void* messageAcknowledge; int lastClientCommandString; int * downloadName; void* reliableSequence; void* reliableAcknowledge; } ;
typedef TYPE_1__ client_t ;
struct TYPE_12__ {int serverId; int restartedServerId; } ;
struct TYPE_11__ {TYPE_1__* clients; } ;


 scalar_t__ CS_ACTIVE ;
 scalar_t__ CS_ZOMBIE ;
 int Com_DPrintf (char*,int ) ;
 int Com_Printf (char*,int) ;
 void* MAX_RELIABLE_COMMANDS ;
 int MSG_Bitstream (int *) ;
 int MSG_ReadByte (int *) ;
 void* MSG_ReadLong (int *) ;
 int SV_ClientCommand (TYPE_1__*,int *) ;
 int SV_DropClient (TYPE_1__*,char*) ;
 int SV_SendClientGameState (TYPE_1__*) ;
 int SV_UserMove (TYPE_1__*,int *,int ) ;
 int SV_UserVoip (TYPE_1__*,int *,int ) ;
 int clc_EOF ;
 int clc_clientCommand ;
 int clc_move ;
 int clc_moveNoDelta ;
 int clc_voipOpus ;
 int clc_voipSpeex ;
 int qfalse ;
 int qtrue ;
 int strstr (int ,char*) ;
 TYPE_3__ sv ;
 TYPE_2__ svs ;

void SV_ExecuteClientMessage( client_t *cl, msg_t *msg ) {
 int c;
 int serverId;

 MSG_Bitstream(msg);

 serverId = MSG_ReadLong( msg );
 cl->messageAcknowledge = MSG_ReadLong( msg );

 if (cl->messageAcknowledge < 0) {



  SV_DropClient( cl, "DEBUG: illegible client message" );

  return;
 }

 cl->reliableAcknowledge = MSG_ReadLong( msg );




 if (cl->reliableAcknowledge < cl->reliableSequence - MAX_RELIABLE_COMMANDS) {



  SV_DropClient( cl, "DEBUG: illegible client message" );

  cl->reliableAcknowledge = cl->reliableSequence;
  return;
 }
 if ( serverId != sv.serverId && !*cl->downloadName && !strstr(cl->lastClientCommandString, "nextdl") ) {
  if ( serverId >= sv.restartedServerId && serverId < sv.serverId ) {

   Com_DPrintf("%s : ignoring pre map_restart / outdated client message\n", cl->name);
   return;
  }


  if ( cl->state != CS_ACTIVE && cl->messageAcknowledge > cl->gamestateMessageNum ) {
   Com_DPrintf( "%s : dropped gamestate, resending\n", cl->name );
   SV_SendClientGameState( cl );
  }
  return;
 }



 if( cl->oldServerTime && serverId == sv.serverId ){
  Com_DPrintf( "%s acknowledged gamestate\n", cl->name );
  cl->oldServerTime = 0;
 }


 do {
  c = MSG_ReadByte( msg );

  if ( c == clc_EOF ) {
   break;
  }

  if ( c != clc_clientCommand ) {
   break;
  }
  if ( !SV_ClientCommand( cl, msg ) ) {
   return;
  }
  if (cl->state == CS_ZOMBIE) {
   return;
  }
 } while ( 1 );


 if ( c == clc_voipSpeex ) {




 }


 if ( c == clc_voipOpus ) {




 }


 if ( c == clc_move ) {
  SV_UserMove( cl, msg, qtrue );
 } else if ( c == clc_moveNoDelta ) {
  SV_UserMove( cl, msg, qfalse );
 } else if ( c != clc_EOF ) {
  Com_Printf( "WARNING: bad command byte for client %i\n", (int) (cl - svs.clients) );
 }



}
