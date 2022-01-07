
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int * xcommand_t ;
struct TYPE_4__ {struct TYPE_4__* next; int * complete; int * function; int name; } ;
typedef TYPE_1__ cmd_function_t ;


 scalar_t__ Cmd_FindCommand (char const*) ;
 int Com_Printf (char*,char const*) ;
 int CopyString (char const*) ;
 TYPE_1__* S_Malloc (int) ;
 TYPE_1__* cmd_functions ;

void Cmd_AddCommand( const char *cmd_name, xcommand_t function ) {
 cmd_function_t *cmd;


 if( Cmd_FindCommand( cmd_name ) )
 {

  if( function != ((void*)0) )
   Com_Printf( "Cmd_AddCommand: %s already defined\n", cmd_name );
  return;
 }


 cmd = S_Malloc (sizeof(cmd_function_t));
 cmd->name = CopyString( cmd_name );
 cmd->function = function;
 cmd->complete = ((void*)0);
 cmd->next = cmd_functions;
 cmd_functions = cmd;
}
