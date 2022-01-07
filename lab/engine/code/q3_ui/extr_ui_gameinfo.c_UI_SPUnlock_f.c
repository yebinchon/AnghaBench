
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arenaKey ;


 int Com_sprintf (char*,int,char*,int) ;
 int Info_SetValueForKey (char*,char*,char*) ;
 int MAX_INFO_VALUE ;
 int UI_SPLevelMenu_ReInit () ;
 int UI_ShowTierVideo (int) ;
 int trap_Cvar_Set (char*,char*) ;
 int trap_Cvar_VariableStringBuffer (char*,char*,int) ;
 int trap_Print (char*) ;
 int ui_numSinglePlayerArenas ;
 int ui_numSpecialSinglePlayerArenas ;

void UI_SPUnlock_f( void ) {
 char arenaKey[16];
 char scores[MAX_INFO_VALUE];
 int level;
 int tier;


 trap_Cvar_VariableStringBuffer( "g_spScores1", scores, MAX_INFO_VALUE );


 for( level = 0; level < ui_numSinglePlayerArenas + ui_numSpecialSinglePlayerArenas; level++ ) {
  Com_sprintf( arenaKey, sizeof( arenaKey ), "l%i", level );
  Info_SetValueForKey( scores, arenaKey, "1" );
 }
 trap_Cvar_Set( "g_spScores1", scores );


 for( tier = 1; tier <= 8; tier++ ) {
  UI_ShowTierVideo( tier );
 }

 trap_Print( "All levels unlocked at skill level 1\n" );

 UI_SPLevelMenu_ReInit();
}
