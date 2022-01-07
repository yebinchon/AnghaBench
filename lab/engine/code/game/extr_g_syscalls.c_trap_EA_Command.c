
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_EA_COMMAND ;
 int syscall (int ,int,char*) ;

void trap_EA_Command(int client, char *command) {
 syscall( BOTLIB_EA_COMMAND, client, command );
}
