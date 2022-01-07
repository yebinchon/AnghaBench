
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* function ) () ;struct TYPE_5__* next; int name; } ;
typedef TYPE_1__ cmd_function_t ;
struct TYPE_7__ {scalar_t__ integer; } ;
struct TYPE_6__ {scalar_t__ integer; } ;


 int CL_ForwardCommandToServer (char const*) ;
 scalar_t__ CL_GameCommand () ;
 int Cmd_Argc () ;
 int Cmd_TokenizeString (char const*) ;
 scalar_t__ Cvar_Command () ;
 int Q_stricmp (int ,int ) ;
 scalar_t__ SV_GameCommand () ;
 scalar_t__ UI_GameCommand () ;
 int * cmd_argv ;
 TYPE_1__* cmd_functions ;
 TYPE_3__* com_cl_running ;
 TYPE_2__* com_sv_running ;
 int stub1 () ;

void Cmd_ExecuteString( const char *text ) {
 cmd_function_t *cmd, **prev;


 Cmd_TokenizeString( text );
 if ( !Cmd_Argc() ) {
  return;
 }


 for ( prev = &cmd_functions ; *prev ; prev = &cmd->next ) {
  cmd = *prev;
  if ( !Q_stricmp( cmd_argv[0],cmd->name ) ) {


   *prev = cmd->next;
   cmd->next = cmd_functions;
   cmd_functions = cmd;


   if ( !cmd->function ) {

    break;
   } else {
    cmd->function ();
   }
   return;
  }
 }


 if ( Cvar_Command() ) {
  return;
 }


 if ( com_cl_running && com_cl_running->integer && CL_GameCommand() ) {
  return;
 }


 if ( com_sv_running && com_sv_running->integer && SV_GameCommand() ) {
  return;
 }


 if ( com_cl_running && com_cl_running->integer && UI_GameCommand() ) {
  return;
 }



 CL_ForwardCommandToServer ( text );
}
