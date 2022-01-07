
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int completionFunc_t ;
struct TYPE_3__ {int complete; int name; struct TYPE_3__* next; } ;
typedef TYPE_1__ cmd_function_t ;


 int Q_stricmp (char const*,int ) ;
 TYPE_1__* cmd_functions ;

void Cmd_SetCommandCompletionFunc( const char *command, completionFunc_t complete ) {
 cmd_function_t *cmd;

 for( cmd = cmd_functions; cmd; cmd = cmd->next ) {
  if( !Q_stricmp( command, cmd->name ) ) {
   cmd->complete = complete;
   return;
  }
 }
}
