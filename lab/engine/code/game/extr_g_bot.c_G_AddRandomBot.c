
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXEC_INSERT ;
 int TEAM_BLUE ;
 int TEAM_RED ;
 float trap_Cvar_VariableValue (char*) ;
 int trap_SendConsoleCommand (int ,int ) ;
 int va (char*,float,char*,int ) ;

void G_AddRandomBot( int team ) {
 char *teamstr;
 float skill;

 skill = trap_Cvar_VariableValue( "g_spSkill" );
 if (team == TEAM_RED) teamstr = "red";
 else if (team == TEAM_BLUE) teamstr = "blue";
 else teamstr = "free";
 trap_SendConsoleCommand( EXEC_INSERT, va("addbot random %f %s %i\n", skill, teamstr, 0) );
}
