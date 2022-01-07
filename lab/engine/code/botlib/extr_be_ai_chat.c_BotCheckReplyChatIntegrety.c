
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* next; } ;
typedef TYPE_1__ bot_stringlist_t ;
struct TYPE_9__ {TYPE_3__* firstchatmessage; struct TYPE_9__* next; } ;
typedef TYPE_2__ bot_replychat_t ;
struct TYPE_10__ {int chatmessage; struct TYPE_10__* next; } ;
typedef TYPE_3__ bot_chatmessage_t ;


 TYPE_1__* BotCheckChatMessageIntegrety (int ,TYPE_1__*) ;
 int FreeMemory (TYPE_1__*) ;

void BotCheckReplyChatIntegrety(bot_replychat_t *replychat)
{
 bot_replychat_t *rp;
 bot_chatmessage_t *cm;
 bot_stringlist_t *stringlist, *s, *nexts;

 stringlist = ((void*)0);
 for (rp = replychat; rp; rp = rp->next)
 {
  for (cm = rp->firstchatmessage; cm; cm = cm->next)
  {
   stringlist = BotCheckChatMessageIntegrety(cm->chatmessage, stringlist);
  }
 }
 for (s = stringlist; s; s = nexts)
 {
  nexts = s->next;
  FreeMemory(s);
 }
}
