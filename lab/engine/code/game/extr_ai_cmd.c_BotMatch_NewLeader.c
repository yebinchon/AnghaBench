
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int netname ;
struct TYPE_4__ {int teamleader; } ;
typedef TYPE_1__ bot_state_t ;
typedef int bot_match_t ;


 int BotSameTeam (TYPE_1__*,int) ;
 int FindClientByName (char*) ;
 int MAX_NETNAME ;
 int NETNAME ;
 int Q_strncpyz (int ,char*,int) ;
 int trap_BotMatchVariable (int *,int ,char*,int) ;

void BotMatch_NewLeader(bot_state_t *bs, bot_match_t *match) {
 int client;
 char netname[MAX_NETNAME];

 trap_BotMatchVariable(match, NETNAME, netname, sizeof(netname));
 client = FindClientByName(netname);
 if (!BotSameTeam(bs, client))
  return;
 Q_strncpyz(bs->teamleader, netname, sizeof(bs->teamleader));
}
