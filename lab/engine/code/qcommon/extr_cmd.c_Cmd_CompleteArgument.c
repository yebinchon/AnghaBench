
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* complete ) (char*,int) ;int name; struct TYPE_3__* next; } ;
typedef TYPE_1__ cmd_function_t ;


 int Q_stricmp (char const*,int ) ;
 TYPE_1__* cmd_functions ;
 int stub1 (char*,int) ;

void Cmd_CompleteArgument( const char *command, char *args, int argNum ) {
 cmd_function_t *cmd;

 for( cmd = cmd_functions; cmd; cmd = cmd->next ) {
  if( !Q_stricmp( command, cmd->name ) ) {
   if ( cmd->complete ) {
    cmd->complete( args, argNum );
   }
   return;
  }
 }
}
