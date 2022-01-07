
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ function; } ;
typedef TYPE_1__ cmd_function_t ;


 TYPE_1__* Cmd_FindCommand (char const*) ;
 int Cmd_RemoveCommand (char const*) ;
 int Com_Error (int ,char*,char const*) ;
 int ERR_DROP ;

void Cmd_RemoveCommandSafe( const char *cmd_name )
{
 cmd_function_t *cmd = Cmd_FindCommand( cmd_name );

 if( !cmd )
  return;
 if( cmd->function )
 {
  Com_Error( ERR_DROP, "Restricted source tried to remove "
   "system command \"%s\"", cmd_name );
  return;
 }

 Cmd_RemoveCommand( cmd_name );
}
