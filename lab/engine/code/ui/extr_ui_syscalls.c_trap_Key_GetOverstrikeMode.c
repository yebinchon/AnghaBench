
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int UI_KEY_GETOVERSTRIKEMODE ;
 int syscall (int ) ;

qboolean trap_Key_GetOverstrikeMode( void ) {
 return syscall( UI_KEY_GETOVERSTRIKEMODE );
}
