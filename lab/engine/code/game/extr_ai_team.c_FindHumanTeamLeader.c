
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int teamleader; } ;
typedef TYPE_2__ bot_state_t ;
struct TYPE_8__ {int svFlags; } ;
struct TYPE_10__ {TYPE_1__ r; scalar_t__ inuse; } ;


 scalar_t__ BotSameTeam (TYPE_2__*,int) ;
 int BotSetLastOrderedTask (TYPE_2__*) ;
 int BotVoiceChat_Defend (TYPE_2__*,int,int ) ;
 int ClientName (int,int ,int) ;
 int MAX_CLIENTS ;
 int SAY_TELL ;
 int SVF_BOT ;
 TYPE_3__* g_entities ;
 int * notleader ;
 int qfalse ;
 int qtrue ;

int FindHumanTeamLeader(bot_state_t *bs) {
 int i;

 for (i = 0; i < MAX_CLIENTS; i++) {
  if ( g_entities[i].inuse ) {

   if ( !(g_entities[i].r.svFlags & SVF_BOT) ) {

    if (!notleader[i]) {

     if ( BotSameTeam(bs, i) ) {
      ClientName(i, bs->teamleader, sizeof(bs->teamleader));

      if ( !BotSetLastOrderedTask(bs) ) {

       BotVoiceChat_Defend(bs, i, SAY_TELL);
      }
      return qtrue;
     }
    }
   }
  }
 }
 return qfalse;
}
