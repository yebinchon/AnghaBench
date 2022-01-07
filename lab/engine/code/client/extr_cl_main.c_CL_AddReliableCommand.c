
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_2__ {int reliableSequence; int reliableAcknowledge; int * reliableCommands; } ;


 int Com_Error (int ,char*) ;
 int ERR_DROP ;
 int MAX_RELIABLE_COMMANDS ;
 int Q_strncpyz (int ,char const*,int) ;
 TYPE_1__ clc ;
 scalar_t__ com_errorEntered ;

void CL_AddReliableCommand(const char *cmd, qboolean isDisconnectCmd)
{
 int unacknowledged = clc.reliableSequence - clc.reliableAcknowledge;





 if ((isDisconnectCmd && unacknowledged > MAX_RELIABLE_COMMANDS) ||
     (!isDisconnectCmd && unacknowledged >= MAX_RELIABLE_COMMANDS))
 {
  if(com_errorEntered)
   return;
  else
   Com_Error(ERR_DROP, "Client command overflow");
 }

 Q_strncpyz(clc.reliableCommands[++clc.reliableSequence & (MAX_RELIABLE_COMMANDS - 1)],
     cmd, sizeof(*clc.reliableCommands));
}
