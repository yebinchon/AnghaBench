
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_CMD_EXECUTETEXT ;
 int syscall (int ,int,char const*) ;

void trap_Cmd_ExecuteText( int exec_when, const char *text ) {
 syscall( UI_CMD_EXECUTETEXT, exec_when, text );
}
