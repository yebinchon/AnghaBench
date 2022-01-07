
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bots ;


 scalar_t__ BOT_BEGIN_DELAY_INCREMENT ;
 int EXEC_INSERT ;
 int MAX_INFO_VALUE ;
 int Q_strncpyz (char*,char*,int) ;
 int * podium1 ;
 int * podium2 ;
 int * podium3 ;
 int trap_Cvar_Set (char*,char*) ;
 float trap_Cvar_VariableValue (char*) ;
 int trap_SendConsoleCommand (int ,int ) ;
 int va (char*,char*,float,int) ;

__attribute__((used)) static void G_SpawnBots( char *botList, int baseDelay ) {
 char *bot;
 char *p;
 float skill;
 int delay;
 char bots[MAX_INFO_VALUE];

 podium1 = ((void*)0);
 podium2 = ((void*)0);
 podium3 = ((void*)0);

 skill = trap_Cvar_VariableValue( "g_spSkill" );
 if( skill < 1 ) {
  trap_Cvar_Set( "g_spSkill", "1" );
  skill = 1;
 }
 else if ( skill > 5 ) {
  trap_Cvar_Set( "g_spSkill", "5" );
  skill = 5;
 }

 Q_strncpyz( bots, botList, sizeof(bots) );
 p = &bots[0];
 delay = baseDelay;
 while( *p ) {

  while( *p && *p == ' ' ) {
   p++;
  }
  if( !*p ) {
   break;
  }


  bot = p;


  while( *p && *p != ' ' ) {
   p++;
  }
  if( *p ) {
   *p++ = 0;
  }



  trap_SendConsoleCommand( EXEC_INSERT, va("addbot %s %f free %i\n", bot, skill, delay) );

  delay += BOT_BEGIN_DELAY_INCREMENT;
 }
}
