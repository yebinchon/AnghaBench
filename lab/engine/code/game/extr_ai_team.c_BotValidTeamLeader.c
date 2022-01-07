
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int teamleader; } ;
typedef TYPE_1__ bot_state_t ;


 int ClientFromName (int ) ;
 int qfalse ;
 int qtrue ;
 int strlen (int ) ;

int BotValidTeamLeader(bot_state_t *bs) {
 if (!strlen(bs->teamleader)) return qfalse;
 if (ClientFromName(bs->teamleader) == -1) return qfalse;
 return qtrue;
}
