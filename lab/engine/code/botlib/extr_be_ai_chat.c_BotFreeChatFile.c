
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * chat; } ;
typedef TYPE_1__ bot_chatstate_t ;


 TYPE_1__* BotChatStateFromHandle (int) ;
 int FreeMemory (int *) ;

void BotFreeChatFile(int chatstate)
{
 bot_chatstate_t *cs;

 cs = BotChatStateFromHandle(chatstate);
 if (!cs) return;
 if (cs->chat) FreeMemory(cs->chat);
 cs->chat = ((void*)0);
}
