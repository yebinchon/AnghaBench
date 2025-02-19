
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arenaKey ;


 int Com_sprintf (char*,int,char*,int) ;
 int Info_ValueForKey (char*,char*) ;
 int MAX_INFO_VALUE ;
 int atoi (int ) ;
 int trap_Cvar_VariableStringBuffer (int ,char*,int) ;
 int ui_numArenas ;
 int va (char*,int) ;

void UI_GetBestScore( int level, int *score, int *skill ) {
 int n;
 int skillScore;
 int bestScore;
 int bestScoreSkill;
 char arenaKey[16];
 char scores[MAX_INFO_VALUE];

 if( !score || !skill ) {
  return;
 }

 if( level < 0 || level > ui_numArenas ) {
  return;
 }

 bestScore = 0;
 bestScoreSkill = 0;

 for( n = 1; n <= 5; n++ ) {
  trap_Cvar_VariableStringBuffer( va( "g_spScores%i", n ), scores, MAX_INFO_VALUE );

  Com_sprintf( arenaKey, sizeof( arenaKey ), "l%i", level );
  skillScore = atoi( Info_ValueForKey( scores, arenaKey ) );

  if( skillScore < 1 || skillScore > 8 ) {
   continue;
  }

  if( !bestScore || skillScore <= bestScore ) {
   bestScore = skillScore;
   bestScoreSkill = n;
  }
 }

 *score = bestScore;
 *skill = bestScoreSkill;
}
