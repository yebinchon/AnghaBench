
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cmd_RemoveCommand (char*) ;

void Con_Shutdown(void)
{
 Cmd_RemoveCommand("toggleconsole");
 Cmd_RemoveCommand("togglemenu");
 Cmd_RemoveCommand("messagemode");
 Cmd_RemoveCommand("messagemode2");
 Cmd_RemoveCommand("messagemode3");
 Cmd_RemoveCommand("messagemode4");
 Cmd_RemoveCommand("clear");
 Cmd_RemoveCommand("condump");
}
