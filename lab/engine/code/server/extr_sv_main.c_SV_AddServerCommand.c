
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ state; int reliableSequence; int reliableAcknowledge; char const** reliableCommands; } ;
typedef TYPE_1__ client_t ;


 scalar_t__ CS_PRIMED ;
 int Com_Printf (char*,...) ;
 int MAX_RELIABLE_COMMANDS ;
 int Q_strncpyz (char const*,char const*,int) ;
 int SV_DropClient (TYPE_1__*,char*) ;

void SV_AddServerCommand( client_t *client, const char *cmd ) {
 int index, i;
 if( client->state < CS_PRIMED )
  return;

 client->reliableSequence++;




 if ( client->reliableSequence - client->reliableAcknowledge == MAX_RELIABLE_COMMANDS + 1 ) {
  Com_Printf( "===== pending server commands =====\n" );
  for ( i = client->reliableAcknowledge + 1 ; i <= client->reliableSequence ; i++ ) {
   Com_Printf( "cmd %5d: %s\n", i, client->reliableCommands[ i & (MAX_RELIABLE_COMMANDS-1) ] );
  }
  Com_Printf( "cmd %5d: %s\n", i, cmd );
  SV_DropClient( client, "Server command overflow" );
  return;
 }
 index = client->reliableSequence & ( MAX_RELIABLE_COMMANDS - 1 );
 Q_strncpyz( client->reliableCommands[ index ], cmd, sizeof( client->reliableCommands[ index ] ) );
}
