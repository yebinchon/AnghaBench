
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef double* vec3_t ;
typedef int netname ;
typedef int buf ;
struct TYPE_10__ {int * origin; } ;
struct TYPE_11__ {int name; TYPE_1__ goal; struct TYPE_11__* prev; struct TYPE_11__* next; int inuse; } ;
typedef TYPE_2__ bot_waypoint_t ;
struct TYPE_12__ {int cs; TYPE_2__* checkpoints; } ;
typedef TYPE_3__ bot_state_t ;
typedef int bot_match_t ;


 int BotAI_BotInitialChat (TYPE_3__*,char*,int ,...) ;
 scalar_t__ BotAddressedToBot (TYPE_3__*,int *) ;
 TYPE_2__* BotCreateWayPoint (char*,double*,int) ;
 TYPE_2__* BotFindWayPoint (TYPE_2__*,char*) ;
 int BotPointAreaNum (double*) ;
 int CHAT_TELL ;
 int ClientFromName (char*) ;
 int Com_sprintf (char*,int,char*,int ,int ,int ) ;
 int MAX_MESSAGE_SIZE ;
 int NAME ;
 int NETNAME ;
 int POSITION ;
 int TeamPlayIsOn () ;
 int VectorClear (double*) ;
 int qfalse ;
 int sscanf (char*,char*,double*,double*,double*) ;
 int trap_BotEnterChat (int ,int,int ) ;
 int trap_BotMatchVariable (int *,int ,char*,int) ;

void BotMatch_CheckPoint(bot_state_t *bs, bot_match_t *match) {
 int areanum, client;
 char buf[MAX_MESSAGE_SIZE];
 char netname[MAX_MESSAGE_SIZE];
 vec3_t position;
 bot_waypoint_t *cp;

 if (!TeamPlayIsOn()) return;

 trap_BotMatchVariable(match, POSITION, buf, MAX_MESSAGE_SIZE);
 VectorClear(position);

 trap_BotMatchVariable(match, NETNAME, netname, sizeof(netname));
 client = ClientFromName(netname);

 sscanf(buf, "%f %f %f", &position[0], &position[1], &position[2]);
 position[2] += 0.5;
 areanum = BotPointAreaNum(position);
 if (!areanum) {
  if (BotAddressedToBot(bs, match)) {
   BotAI_BotInitialChat(bs, "checkpoint_invalid", ((void*)0));
   trap_BotEnterChat(bs->cs, client, CHAT_TELL);
  }
  return;
 }

 trap_BotMatchVariable(match, NAME, buf, MAX_MESSAGE_SIZE);

 cp = BotFindWayPoint(bs->checkpoints, buf);
 if (cp) {
  if (cp->next) cp->next->prev = cp->prev;
  if (cp->prev) cp->prev->next = cp->next;
  else bs->checkpoints = cp->next;
  cp->inuse = qfalse;
 }

 cp = BotCreateWayPoint(buf, position, areanum);

 cp->next = bs->checkpoints;
 if (bs->checkpoints) bs->checkpoints->prev = cp;
 bs->checkpoints = cp;

 if (BotAddressedToBot(bs, match)) {
  Com_sprintf(buf, sizeof(buf), "%1.0f %1.0f %1.0f", cp->goal.origin[0],
             cp->goal.origin[1],
             cp->goal.origin[2]);

  BotAI_BotInitialChat(bs, "checkpoint_confirm", cp->name, buf, ((void*)0));
  trap_BotEnterChat(bs->cs, client, CHAT_TELL);
 }
}
