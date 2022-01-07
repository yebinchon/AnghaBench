
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int teammate ;
typedef int netname ;
struct TYPE_15__ {scalar_t__ entitynum; } ;
struct TYPE_14__ {int entitynum; int areanum; int maxs; int mins; int origin; } ;
struct TYPE_16__ {int client; int lead_teammate; int leadmessage_time; scalar_t__ leadvisible_time; scalar_t__ lead_time; int cs; TYPE_2__ teamgoal; TYPE_1__ lead_teamgoal; } ;
typedef TYPE_3__ bot_state_t ;
struct TYPE_17__ {int subtype; } ;
typedef TYPE_4__ bot_match_t ;
struct TYPE_18__ {int origin; scalar_t__ valid; } ;
typedef TYPE_5__ aas_entityinfo_t ;


 int BotAI_BotInitialChat (TYPE_3__*,char*,char*,int *) ;
 int BotAddressedToBot (TYPE_3__*,TYPE_4__*) ;
 int BotEntityInfo (int,TYPE_5__*) ;
 int BotPointAreaNum (int ) ;
 int BotSameTeam (TYPE_3__*,int) ;
 int CHAT_TEAM ;
 int ClientFromName (char*) ;
 int FindClientByName (char*) ;
 int FloatTime () ;
 int MAX_MESSAGE_SIZE ;
 int NETNAME ;
 int ST_SOMEONE ;
 int TEAMMATE ;
 scalar_t__ TEAM_LEAD_TIME ;
 int TeamPlayIsOn () ;
 int VectorCopy (int ,int ) ;
 int VectorSet (int ,int,int,int) ;
 int qfalse ;
 int qtrue ;
 int random () ;
 int trap_BotEnterChat (int ,int,int ) ;
 int trap_BotMatchVariable (TYPE_4__*,int ,char*,int) ;

void BotMatch_LeadTheWay(bot_state_t *bs, bot_match_t *match) {
 aas_entityinfo_t entinfo;
 char netname[MAX_MESSAGE_SIZE], teammate[MAX_MESSAGE_SIZE];
 int client, areanum, other;

 if (!TeamPlayIsOn()) return;

 if (!BotAddressedToBot(bs, match)) return;

 if (match->subtype & ST_SOMEONE) {

  trap_BotMatchVariable(match, TEAMMATE, teammate, sizeof(teammate));
  client = FindClientByName(teammate);

  if (client == bs->client) {
   other = qfalse;
  }
  else if (!BotSameTeam(bs, client)) {

   return;
  }
  else {
   other = qtrue;
  }
 }
 else {

  trap_BotMatchVariable(match, NETNAME, netname, sizeof(netname));
  client = ClientFromName(netname);
  other = qfalse;
 }

 if (client < 0) {
  BotAI_BotInitialChat(bs, "whois", netname, ((void*)0));
  trap_BotEnterChat(bs->cs, bs->client, CHAT_TEAM);
  return;
 }

 bs->lead_teamgoal.entitynum = -1;
 BotEntityInfo(client, &entinfo);

 if (entinfo.valid) {
  areanum = BotPointAreaNum(entinfo.origin);
  if (areanum) {
   bs->lead_teamgoal.entitynum = client;
   bs->lead_teamgoal.areanum = areanum;
   VectorCopy(entinfo.origin, bs->lead_teamgoal.origin);
   VectorSet(bs->lead_teamgoal.mins, -8, -8, -8);
   VectorSet(bs->lead_teamgoal.maxs, 8, 8, 8);
  }
 }

 if (bs->teamgoal.entitynum < 0) {
  if (other) BotAI_BotInitialChat(bs, "whereis", teammate, ((void*)0));
  else BotAI_BotInitialChat(bs, "whereareyou", netname, ((void*)0));
  trap_BotEnterChat(bs->cs, bs->client, CHAT_TEAM);
  return;
 }
 bs->lead_teammate = client;
 bs->lead_time = FloatTime() + TEAM_LEAD_TIME;
 bs->leadvisible_time = 0;
 bs->leadmessage_time = -(FloatTime() + 2 * random());
}
