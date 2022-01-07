
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {TYPE_2__* client; } ;
typedef TYPE_3__ gentity_t ;
typedef int arg ;
struct TYPE_14__ {scalar_t__ integer; } ;
struct TYPE_13__ {TYPE_2__* clients; } ;
struct TYPE_10__ {scalar_t__ spectatorState; scalar_t__ sessionTeam; int spectatorClient; int losses; } ;
struct TYPE_11__ {TYPE_1__ sess; } ;


 int ClientNumberFromString (TYPE_3__*,char*,int ,int ) ;
 scalar_t__ GT_TOURNAMENT ;
 int MAX_TOKEN_CHARS ;
 scalar_t__ SPECTATOR_FOLLOW ;
 int SetTeam (TYPE_3__*,char*) ;
 int StopFollowing (TYPE_3__*) ;
 scalar_t__ TEAM_FREE ;
 scalar_t__ TEAM_SPECTATOR ;
 TYPE_5__ g_gametype ;
 TYPE_4__ level ;
 int qtrue ;
 int trap_Argc () ;
 int trap_Argv (int,char*,int) ;

void Cmd_Follow_f( gentity_t *ent ) {
 int i;
 char arg[MAX_TOKEN_CHARS];

 if ( trap_Argc() != 2 ) {
  if ( ent->client->sess.spectatorState == SPECTATOR_FOLLOW ) {
   StopFollowing( ent );
  }
  return;
 }

 trap_Argv( 1, arg, sizeof( arg ) );
 i = ClientNumberFromString( ent, arg, qtrue, qtrue );
 if ( i == -1 ) {
  return;
 }


 if ( &level.clients[ i ] == ent->client ) {
  return;
 }


 if ( level.clients[ i ].sess.sessionTeam == TEAM_SPECTATOR ) {
  return;
 }


 if ( (g_gametype.integer == GT_TOURNAMENT )
  && ent->client->sess.sessionTeam == TEAM_FREE ) {
  ent->client->sess.losses++;
 }


 if ( ent->client->sess.sessionTeam != TEAM_SPECTATOR ) {
  SetTeam( ent, "spectator" );
 }

 ent->client->sess.spectatorState = SPECTATOR_FOLLOW;
 ent->client->sess.spectatorClient = i;
}
