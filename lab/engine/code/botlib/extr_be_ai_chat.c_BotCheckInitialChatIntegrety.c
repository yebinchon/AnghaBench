
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {struct TYPE_9__* next; } ;
typedef TYPE_1__ bot_stringlist_t ;
struct TYPE_10__ {TYPE_3__* firstchatmessage; struct TYPE_10__* next; } ;
typedef TYPE_2__ bot_chattype_t ;
struct TYPE_11__ {int chatmessage; struct TYPE_11__* next; } ;
typedef TYPE_3__ bot_chatmessage_t ;
struct TYPE_12__ {TYPE_2__* types; } ;
typedef TYPE_4__ bot_chat_t ;


 TYPE_1__* BotCheckChatMessageIntegrety (int ,TYPE_1__*) ;
 int FreeMemory (TYPE_1__*) ;

void BotCheckInitialChatIntegrety(bot_chat_t *chat)
{
 bot_chattype_t *t;
 bot_chatmessage_t *cm;
 bot_stringlist_t *stringlist, *s, *nexts;

 stringlist = ((void*)0);
 for (t = chat->types; t; t = t->next)
 {
  for (cm = t->firstchatmessage; cm; cm = cm->next)
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
