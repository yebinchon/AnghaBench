
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int chatmessage; int client; } ;
typedef TYPE_1__ bot_chatstate_t ;
struct TYPE_5__ {int (* Print ) (int ,char*,int ) ;} ;


 TYPE_1__* BotChatStateFromHandle (int) ;
 int BotRemoveTildes (int ) ;


 int EA_Command (int ,int ) ;
 scalar_t__ LibVarGetValue (char*) ;
 int PRT_MESSAGE ;
 TYPE_2__ botimport ;
 int strcpy (int ,char*) ;
 scalar_t__ strlen (int ) ;
 int stub1 (int ,char*,int ) ;
 int va (char*,int,...) ;

void BotEnterChat(int chatstate, int clientto, int sendto)
{
 bot_chatstate_t *cs;

 cs = BotChatStateFromHandle(chatstate);
 if (!cs) return;

 if (strlen(cs->chatmessage))
 {
  BotRemoveTildes(cs->chatmessage);
  if (LibVarGetValue("bot_testichat")) {
   botimport.Print(PRT_MESSAGE, "%s\n", cs->chatmessage);
  }
  else {
   switch(sendto) {
    case 129:
     EA_Command(cs->client, va("say_team %s", cs->chatmessage));
     break;
    case 128:
     EA_Command(cs->client, va("tell %d %s", clientto, cs->chatmessage));
     break;
    default:
     EA_Command(cs->client, va("say %s", cs->chatmessage));
     break;
   }
  }

  strcpy(cs->chatmessage, "");
 }
}
