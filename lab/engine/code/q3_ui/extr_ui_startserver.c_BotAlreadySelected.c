
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_6__ {scalar_t__ gametype; size_t newBotIndex; int * playerNameBuffers; TYPE_2__* playerTeam; TYPE_1__* playerType; } ;
struct TYPE_5__ {scalar_t__ curvalue; } ;
struct TYPE_4__ {int curvalue; } ;


 scalar_t__ GT_TEAM ;
 int PLAYER_SLOTS ;
 scalar_t__ Q_stricmp (char const*,int ) ;
 int qfalse ;
 int qtrue ;
 TYPE_3__ s_serveroptions ;

__attribute__((used)) static qboolean BotAlreadySelected( const char *checkName ) {
 int n;

 for( n = 1; n < PLAYER_SLOTS; n++ ) {
  if( s_serveroptions.playerType[n].curvalue != 1 ) {
   continue;
  }
  if( (s_serveroptions.gametype >= GT_TEAM) &&
   (s_serveroptions.playerTeam[n].curvalue != s_serveroptions.playerTeam[s_serveroptions.newBotIndex].curvalue ) ) {
   continue;
  }
  if( Q_stricmp( checkName, s_serveroptions.playerNameBuffers[n] ) == 0 ) {
   return qtrue;
  }
 }

 return qfalse;
}
