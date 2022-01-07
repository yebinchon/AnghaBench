
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cmd_AddCommand (char*,int ) ;
 int Cmd_CompleteCfgName ;
 int Cmd_Echo_f ;
 int Cmd_Exec_f ;
 int Cmd_List_f ;
 int Cmd_SetCommandCompletionFunc (char*,int ) ;
 int Cmd_Vstr_f ;
 int Cmd_Wait_f ;
 int Cvar_CompleteCvarName ;

void Cmd_Init (void) {
 Cmd_AddCommand ("cmdlist",Cmd_List_f);
 Cmd_AddCommand ("exec",Cmd_Exec_f);
 Cmd_AddCommand ("execq",Cmd_Exec_f);
 Cmd_SetCommandCompletionFunc( "exec", Cmd_CompleteCfgName );
 Cmd_SetCommandCompletionFunc( "execq", Cmd_CompleteCfgName );
 Cmd_AddCommand ("vstr",Cmd_Vstr_f);
 Cmd_SetCommandCompletionFunc( "vstr", Cvar_CompleteCvarName );
 Cmd_AddCommand ("echo",Cmd_Echo_f);
 Cmd_AddCommand ("wait", Cmd_Wait_f);
}
