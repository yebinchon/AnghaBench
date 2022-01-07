
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int UI_KEY_SETOVERSTRIKEMODE ;
 int syscall (int ,int ) ;

void trap_Key_SetOverstrikeMode( qboolean state ) {
 syscall( UI_KEY_SETOVERSTRIKEMODE, state );
}
