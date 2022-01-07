
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CG_ADDCOMMAND ;
 int syscall (int ,char const*) ;

void trap_AddCommand( const char *cmdName ) {
 syscall( CG_ADDCOMMAND, cmdName );
}
