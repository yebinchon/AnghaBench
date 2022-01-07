
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int EXEC_APPEND ;
 int UI_PopMenu () ;
 int trap_Cmd_ExecuteText (int ,char*) ;

__attribute__((used)) static void InGame_RestartAction( qboolean result ) {
 if( !result ) {
  return;
 }

 UI_PopMenu();
 trap_Cmd_ExecuteText( EXEC_APPEND, "map_restart 0\n" );
}
