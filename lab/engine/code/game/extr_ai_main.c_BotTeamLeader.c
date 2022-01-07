
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int teamleader; } ;
typedef TYPE_1__ bot_state_t ;
struct TYPE_5__ {int inuse; } ;


 int ClientFromName (int ) ;
 TYPE_2__** botstates ;
 int qfalse ;
 int qtrue ;

int BotTeamLeader(bot_state_t *bs) {
 int leader;

 leader = ClientFromName(bs->teamleader);
 if (leader < 0) return qfalse;
 if (!botstates[leader] || !botstates[leader]->inuse) return qfalse;
 return qtrue;
}
