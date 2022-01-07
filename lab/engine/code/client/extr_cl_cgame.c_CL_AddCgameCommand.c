
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cmd_AddCommand (char const*,int *) ;

void CL_AddCgameCommand( const char *cmdName ) {
 Cmd_AddCommand( cmdName, ((void*)0) );
}
