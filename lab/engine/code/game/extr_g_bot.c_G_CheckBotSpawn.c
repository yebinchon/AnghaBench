
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int userinfo ;
struct TYPE_6__ {scalar_t__ spawnTime; int clientNum; } ;
struct TYPE_5__ {scalar_t__ integer; } ;
struct TYPE_4__ {scalar_t__ time; } ;


 int BOT_SPAWN_QUEUE_DEPTH ;
 int ClientBegin (int ) ;
 scalar_t__ GT_SINGLE_PLAYER ;
 int G_CheckMinimumPlayers () ;
 int Info_ValueForKey (char*,char*) ;
 int MAX_INFO_VALUE ;
 int PlayerIntroSound (int ) ;
 TYPE_3__* botSpawnQueue ;
 TYPE_2__ g_gametype ;
 TYPE_1__ level ;
 int trap_GetUserinfo (int ,char*,int) ;

void G_CheckBotSpawn( void ) {
 int n;
 char userinfo[MAX_INFO_VALUE];

 G_CheckMinimumPlayers();

 for( n = 0; n < BOT_SPAWN_QUEUE_DEPTH; n++ ) {
  if( !botSpawnQueue[n].spawnTime ) {
   continue;
  }
  if ( botSpawnQueue[n].spawnTime > level.time ) {
   continue;
  }
  ClientBegin( botSpawnQueue[n].clientNum );
  botSpawnQueue[n].spawnTime = 0;

  if( g_gametype.integer == GT_SINGLE_PLAYER ) {
   trap_GetUserinfo( botSpawnQueue[n].clientNum, userinfo, sizeof(userinfo) );
   PlayerIntroSound( Info_ValueForKey (userinfo, "model") );
  }
 }
}
