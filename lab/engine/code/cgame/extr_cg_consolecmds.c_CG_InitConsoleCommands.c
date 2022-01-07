
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* cmd; } ;


 int ARRAY_LEN (TYPE_1__*) ;
 TYPE_1__* commands ;
 int trap_AddCommand (char*) ;

void CG_InitConsoleCommands( void ) {
 int i;

 for ( i = 0 ; i < ARRAY_LEN( commands ) ; i++ ) {
  trap_AddCommand( commands[i].cmd );
 }





 trap_AddCommand ("kill");
 trap_AddCommand ("say");
 trap_AddCommand ("say_team");
 trap_AddCommand ("tell");
 trap_AddCommand ("give");
 trap_AddCommand ("god");
 trap_AddCommand ("notarget");
 trap_AddCommand ("noclip");
 trap_AddCommand ("where");
 trap_AddCommand ("team");
 trap_AddCommand ("follow");
 trap_AddCommand ("follownext");
 trap_AddCommand ("followprev");
 trap_AddCommand ("levelshot");
 trap_AddCommand ("addbot");
 trap_AddCommand ("setviewpos");
 trap_AddCommand ("callvote");
 trap_AddCommand ("vote");
 trap_AddCommand ("callteamvote");
 trap_AddCommand ("teamvote");
 trap_AddCommand ("stats");
 trap_AddCommand ("teamtask");
 trap_AddCommand ("loaddefered");
}
