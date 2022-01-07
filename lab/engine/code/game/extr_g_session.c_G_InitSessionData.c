
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ localClient; } ;
struct TYPE_14__ {void* spectatorState; void* sessionTeam; } ;
struct TYPE_13__ {TYPE_1__ pers; TYPE_3__ sess; } ;
typedef TYPE_2__ gclient_t ;
typedef TYPE_3__ clientSession_t ;
struct TYPE_19__ {int integer; } ;
struct TYPE_18__ {char* string; } ;
struct TYPE_17__ {int integer; } ;
struct TYPE_16__ {scalar_t__ integer; } ;
struct TYPE_15__ {int numNonSpectatorClients; TYPE_2__* clients; } ;


 int AddTournamentQueue (TYPE_2__*) ;


 int GT_TEAM ;

 int G_WriteClientSessionData (TYPE_2__*) ;
 char* Info_ValueForKey (char*,char*) ;
 void* SPECTATOR_FREE ;
 int SetTeam (int *,char const*) ;
 void* TEAM_FREE ;
 void* TEAM_SPECTATOR ;
 char dmlab_select_team (int,char*) ;
 int * g_entities ;
 TYPE_8__ g_gametype ;
 TYPE_7__ g_localTeamPref ;
 TYPE_6__ g_maxGameClients ;
 TYPE_5__ g_teamAutoJoin ;
 TYPE_4__ level ;
 int trap_Cvar_Set (char*,char*) ;

void G_InitSessionData( gclient_t *client, char *userinfo ) {
 clientSession_t *sess;
 const char *value;
 char team[2] = {'\0', '\0'};
 sess = &client->sess;


 value = Info_ValueForKey( userinfo, "teampref" );


 if ( !value[0] && g_localTeamPref.string[0] && client->pers.localClient ) {
  value = g_localTeamPref.string;


  trap_Cvar_Set( "g_localTeamPref", "" );
 }

 team[0] = dmlab_select_team( client - level.clients, Info_ValueForKey (userinfo, "name") );
 if ( team[0] ){
  value = team;
 }


 if ( g_gametype.integer >= GT_TEAM ) {

  sess->sessionTeam = TEAM_SPECTATOR;
  sess->spectatorState = SPECTATOR_FREE;

  if ( value[0] || g_teamAutoJoin.integer ) {
   SetTeam( &g_entities[client - level.clients], value );
  }
 } else {
  if ( value[0] == 's' ) {

   sess->sessionTeam = TEAM_SPECTATOR;
  } else {
   switch ( g_gametype.integer ) {
   default:
   case 130:
   case 129:
    if ( g_maxGameClients.integer > 0 &&
     level.numNonSpectatorClients >= g_maxGameClients.integer ) {
     sess->sessionTeam = TEAM_SPECTATOR;
    } else {
     sess->sessionTeam = TEAM_FREE;
    }
    break;
   case 128:

    if ( level.numNonSpectatorClients >= 2 ) {
     sess->sessionTeam = TEAM_SPECTATOR;
    } else {
     sess->sessionTeam = TEAM_FREE;
    }
    break;
   }
  }

  sess->spectatorState = SPECTATOR_FREE;
 }

 AddTournamentQueue(client);

 G_WriteClientSessionData( client );
}
