
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int msg ;
struct TYPE_11__ {TYPE_3__* client; } ;
typedef TYPE_4__ gentity_t ;
struct TYPE_12__ {int * teamVoteNo; int * teamVoteYes; int * teamVoteTime; } ;
struct TYPE_9__ {int eFlags; } ;
struct TYPE_8__ {int sessionTeam; } ;
struct TYPE_10__ {TYPE_2__ ps; TYPE_1__ sess; } ;


 scalar_t__ CS_TEAMVOTE_NO ;
 scalar_t__ CS_TEAMVOTE_YES ;
 int EF_TEAMVOTED ;
 int TEAM_BLUE ;
 int TEAM_RED ;
 int TEAM_SPECTATOR ;
 int g_entities ;
 TYPE_6__ level ;
 char tolower (char) ;
 int trap_Argv (int,char*,int) ;
 int trap_SendServerCommand (TYPE_4__*,char*) ;
 int trap_SetConfigstring (scalar_t__,int ) ;
 int va (char*,int ) ;

void Cmd_TeamVote_f( gentity_t *ent ) {
 int team, cs_offset;
 char msg[64];

 team = ent->client->sess.sessionTeam;
 if ( team == TEAM_RED )
  cs_offset = 0;
 else if ( team == TEAM_BLUE )
  cs_offset = 1;
 else
  return;

 if ( !level.teamVoteTime[cs_offset] ) {
  trap_SendServerCommand( ent-g_entities, "print \"No team vote in progress.\n\"" );
  return;
 }
 if ( ent->client->ps.eFlags & EF_TEAMVOTED ) {
  trap_SendServerCommand( ent-g_entities, "print \"Team vote already cast.\n\"" );
  return;
 }
 if ( ent->client->sess.sessionTeam == TEAM_SPECTATOR ) {
  trap_SendServerCommand( ent-g_entities, "print \"Not allowed to vote as spectator.\n\"" );
  return;
 }

 trap_SendServerCommand( ent-g_entities, "print \"Team vote cast.\n\"" );

 ent->client->ps.eFlags |= EF_TEAMVOTED;

 trap_Argv( 1, msg, sizeof( msg ) );

 if ( tolower( msg[0] ) == 'y' || msg[0] == '1' ) {
  level.teamVoteYes[cs_offset]++;
  trap_SetConfigstring( CS_TEAMVOTE_YES + cs_offset, va("%i", level.teamVoteYes[cs_offset] ) );
 } else {
  level.teamVoteNo[cs_offset]++;
  trap_SetConfigstring( CS_TEAMVOTE_NO + cs_offset, va("%i", level.teamVoteNo[cs_offset] ) );
 }



}
