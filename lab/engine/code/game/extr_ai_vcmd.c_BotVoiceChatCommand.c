
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int buf ;
typedef int bot_state_t ;
struct TYPE_2__ {int (* func ) (int *,int,int) ;scalar_t__ cmd; } ;


 int BotSameTeam (int *,int) ;
 int MAX_MESSAGE_SIZE ;
 int Q_stricmp (char*,scalar_t__) ;
 int Q_strncpyz (char*,char*,int) ;
 int SAY_ALL ;
 int TeamPlayIsOn () ;
 int atoi (char*) ;
 int qfalse ;
 int qtrue ;
 int stub1 (int *,int,int) ;
 TYPE_1__* voiceCommands ;

int BotVoiceChatCommand(bot_state_t *bs, int mode, char *voiceChat) {
 int i, clientNum;

 char *ptr, buf[MAX_MESSAGE_SIZE], *cmd;

 if (!TeamPlayIsOn()) {
  return qfalse;
 }

 if ( mode == SAY_ALL ) {
  return qfalse;
 }

 Q_strncpyz(buf, voiceChat, sizeof(buf));
 cmd = buf;
 for (; *cmd && *cmd > ' '; cmd++);
 while (*cmd && *cmd <= ' ') *cmd++ = '\0';

 for (ptr = cmd; *cmd && *cmd > ' '; cmd++);
 while (*cmd && *cmd <= ' ') *cmd++ = '\0';
 clientNum = atoi(ptr);
 for (; *cmd && *cmd > ' '; cmd++);
 while (*cmd && *cmd <= ' ') *cmd++ = '\0';


 if (!BotSameTeam(bs, clientNum)) {
  return qfalse;
 }

 for (i = 0; voiceCommands[i].cmd; i++) {
  if (!Q_stricmp(cmd, voiceCommands[i].cmd)) {
   voiceCommands[i].func(bs, clientNum, mode);
   return qtrue;
  }
 }
 return qfalse;
}
