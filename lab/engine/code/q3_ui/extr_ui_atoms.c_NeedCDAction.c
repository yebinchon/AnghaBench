
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int EXEC_APPEND ;
 int trap_Cmd_ExecuteText (int ,char*) ;

__attribute__((used)) static void NeedCDAction( qboolean result ) {
 if ( !result ) {
  trap_Cmd_ExecuteText( EXEC_APPEND, "quit\n" );
 }
}
