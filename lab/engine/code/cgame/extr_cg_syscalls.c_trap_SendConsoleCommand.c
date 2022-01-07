
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CG_SENDCONSOLECOMMAND ;
 int syscall (int ,char const*) ;

void trap_SendConsoleCommand( const char *text ) {
 syscall( CG_SENDCONSOLECOMMAND, text );
}
