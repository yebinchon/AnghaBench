
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int handle; int message; int type; int time; } ;
typedef TYPE_1__ bot_consolemessage_t ;
struct TYPE_6__ {TYPE_1__* firstmessage; } ;
typedef TYPE_2__ bot_chatstate_t ;


 TYPE_2__* BotChatStateFromHandle (int) ;
 int Q_strncpyz (int ,int ,int) ;

int BotNextConsoleMessage(int chatstate, bot_consolemessage_t *cm)
{
 bot_chatstate_t *cs;
 bot_consolemessage_t *firstmsg;

 cs = BotChatStateFromHandle(chatstate);
 if (!cs) return 0;
 if ((firstmsg = cs->firstmessage))
 {
  cm->handle = firstmsg->handle;
  cm->time = firstmsg->time;
  cm->type = firstmsg->type;
  Q_strncpyz(cm->message, firstmsg->message,
      sizeof(cm->message));
  return cm->handle;
 }
 return 0;
}
