
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CL_Shutdown (char*,int ,int ) ;
 char* Cmd_Args () ;
 int Com_Shutdown () ;
 int FS_Shutdown (int ) ;
 int SV_Shutdown (char*) ;
 int Sys_Quit () ;
 int VM_Forced_Unload_Done () ;
 int VM_Forced_Unload_Start () ;
 int com_errorEntered ;
 int qtrue ;

void Com_Quit_f( void ) {

 char *p = Cmd_Args( );
 if ( !com_errorEntered ) {




  VM_Forced_Unload_Start();
  SV_Shutdown(p[0] ? p : "Server quit");
  CL_Shutdown(p[0] ? p : "Client quit", qtrue, qtrue);
  VM_Forced_Unload_Done();
  Com_Shutdown ();
  FS_Shutdown(qtrue);
 }
 Sys_Quit ();
}
