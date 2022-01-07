
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* firstchatmessage; struct TYPE_4__* next; } ;
typedef TYPE_1__ bot_replychat_t ;
struct TYPE_5__ {scalar_t__ time; struct TYPE_5__* next; } ;
typedef TYPE_2__ bot_chatmessage_t ;


 TYPE_1__* replychats ;

void BotResetChatAI(void)
{
 bot_replychat_t *rchat;
 bot_chatmessage_t *m;

 for (rchat = replychats; rchat; rchat = rchat->next)
 {
  for (m = rchat->firstchatmessage; m; m = m->next)
  {
   m->time = 0;
  }
 }
}
