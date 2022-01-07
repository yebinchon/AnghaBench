
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int handle; int type; struct TYPE_6__* prev; struct TYPE_6__* next; int message; int time; } ;
typedef TYPE_1__ bot_consolemessage_t ;
struct TYPE_7__ {int handle; int numconsolemessages; TYPE_1__* firstmessage; TYPE_1__* lastmessage; } ;
typedef TYPE_2__ bot_chatstate_t ;
struct TYPE_8__ {int (* Print ) (int ,char*) ;} ;


 int AAS_Time () ;
 TYPE_1__* AllocConsoleMessage () ;
 TYPE_2__* BotChatStateFromHandle (int) ;
 int MAX_MESSAGE_SIZE ;
 int PRT_ERROR ;
 int Q_strncpyz (int ,char*,int ) ;
 TYPE_3__ botimport ;
 int stub1 (int ,char*) ;

void BotQueueConsoleMessage(int chatstate, int type, char *message)
{
 bot_consolemessage_t *m;
 bot_chatstate_t *cs;

 cs = BotChatStateFromHandle(chatstate);
 if (!cs) return;

 m = AllocConsoleMessage();
 if (!m)
 {
  botimport.Print(PRT_ERROR, "empty console message heap\n");
  return;
 }
 cs->handle++;
 if (cs->handle <= 0 || cs->handle > 8192) cs->handle = 1;
 m->handle = cs->handle;
 m->time = AAS_Time();
 m->type = type;
 Q_strncpyz(m->message, message, MAX_MESSAGE_SIZE);
 m->next = ((void*)0);
 if (cs->lastmessage)
 {
  cs->lastmessage->next = m;
  m->prev = cs->lastmessage;
  cs->lastmessage = m;
 }
 else
 {
  cs->lastmessage = m;
  cs->firstmessage = m;
  m->prev = ((void*)0);
 }
 cs->numconsolemessages++;
}
