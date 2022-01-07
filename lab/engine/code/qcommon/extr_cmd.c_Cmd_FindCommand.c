
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; struct TYPE_4__* next; } ;
typedef TYPE_1__ cmd_function_t ;


 int Q_stricmp (char const*,int ) ;
 TYPE_1__* cmd_functions ;

cmd_function_t *Cmd_FindCommand( const char *cmd_name )
{
 cmd_function_t *cmd;
 for( cmd = cmd_functions; cmd; cmd = cmd->next )
  if( !Q_stricmp( cmd_name, cmd->name ) )
   return cmd;
 return ((void*)0);
}
