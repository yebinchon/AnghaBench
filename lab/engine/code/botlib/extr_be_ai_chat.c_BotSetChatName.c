
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int client; char* name; } ;
typedef TYPE_1__ bot_chatstate_t ;


 TYPE_1__* BotChatStateFromHandle (int) ;
 int Com_Memset (char*,int ,int) ;
 int strncpy (char*,char*,int) ;

void BotSetChatName(int chatstate, char *name, int client)
{
 bot_chatstate_t *cs;

 cs = BotChatStateFromHandle(chatstate);
 if (!cs) return;
 cs->client = client;
 Com_Memset(cs->name, 0, sizeof(cs->name));
 strncpy(cs->name, name, sizeof(cs->name)-1);
 cs->name[sizeof(cs->name)-1] = '\0';
}
