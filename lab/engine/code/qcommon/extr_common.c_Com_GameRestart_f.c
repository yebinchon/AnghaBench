
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cmd_Argv (int) ;
 int Com_GameRestart (int ,int ) ;
 int Cvar_Set (char*,int ) ;
 int qtrue ;

void Com_GameRestart_f(void)
{
 Cvar_Set("fs_game", Cmd_Argv(1));

 Com_GameRestart(0, qtrue);
}
