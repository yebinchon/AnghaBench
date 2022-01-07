
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int handle; struct TYPE_7__* next; TYPE_1__* prev; } ;
typedef TYPE_2__ bot_consolemessage_t ;
struct TYPE_8__ {int numconsolemessages; TYPE_2__* firstmessage; TYPE_1__* lastmessage; } ;
typedef TYPE_3__ bot_chatstate_t ;
struct TYPE_6__ {TYPE_2__* next; } ;


 TYPE_3__* BotChatStateFromHandle (int) ;
 int FreeConsoleMessage (TYPE_2__*) ;

void BotRemoveConsoleMessage(int chatstate, int handle)
{
 bot_consolemessage_t *m, *nextm;
 bot_chatstate_t *cs;

 cs = BotChatStateFromHandle(chatstate);
 if (!cs) return;

 for (m = cs->firstmessage; m; m = nextm)
 {
  nextm = m->next;
  if (m->handle == handle)
  {
   if (m->next) m->next->prev = m->prev;
   else cs->lastmessage = m->prev;
   if (m->prev) m->prev->next = m->next;
   else cs->firstmessage = m->next;

   FreeConsoleMessage(m);
   cs->numconsolemessages--;
   break;
  }
 }
}
