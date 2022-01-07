
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CL_KeyEvent (int ,int ,int ) ;
 int K_ESCAPE ;
 int Sys_Milliseconds () ;
 int qfalse ;
 int qtrue ;

void Con_ToggleMenu_f( void ) {
 CL_KeyEvent( K_ESCAPE, qtrue, Sys_Milliseconds() );
 CL_KeyEvent( K_ESCAPE, qfalse, Sys_Milliseconds() );
}
