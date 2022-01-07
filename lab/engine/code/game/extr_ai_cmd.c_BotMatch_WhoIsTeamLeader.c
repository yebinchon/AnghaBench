
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int netname ;
struct TYPE_3__ {int client; int teamleader; } ;
typedef TYPE_1__ bot_state_t ;
typedef int bot_match_t ;


 int ClientName (int ,char*,int) ;
 int MAX_MESSAGE_SIZE ;
 int Q_stricmp (char*,int ) ;
 int TeamPlayIsOn () ;
 int trap_EA_SayTeam (int ,char*) ;

void BotMatch_WhoIsTeamLeader(bot_state_t *bs, bot_match_t *match) {
 char netname[MAX_MESSAGE_SIZE];

 if (!TeamPlayIsOn()) return;

 ClientName(bs->client, netname, sizeof(netname));

 if (!Q_stricmp(netname, bs->teamleader)) {
  trap_EA_SayTeam(bs->client, "I'm the team leader\n");
 }
}
