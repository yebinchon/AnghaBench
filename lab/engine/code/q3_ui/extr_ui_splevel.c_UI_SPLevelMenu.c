
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int item_next; int menu; } ;


 int ARENAS_PER_TIER ;
 int Info_ValueForKey (char const*,char*) ;
 int Menu_SetCursorToItem (int *,int *) ;
 int UI_GetCurrentGame () ;
 int UI_GetNumSPArenas () ;
 int UI_GetNumSPTiers () ;
 char* UI_GetSpecialArenaInfo (char*) ;
 int UI_PushMenu (int *) ;
 int UI_SPLevelMenu_Init () ;
 int atoi (int ) ;
 int currentGame ;
 int currentSet ;
 int finalTier ;
 TYPE_1__ levelMenuInfo ;
 int maxTier ;
 int minTier ;
 int trainingTier ;

void UI_SPLevelMenu( void ) {
 int level;
 int trainingLevel;
 const char *arenaInfo;

 trainingTier = -1;
 arenaInfo = UI_GetSpecialArenaInfo( "training" );
 if( arenaInfo ) {
  minTier = trainingTier;
  trainingLevel = atoi( Info_ValueForKey( arenaInfo, "num" ) );
 }
 else {
  minTier = 0;
  trainingLevel = -2;
 }

 finalTier = UI_GetNumSPTiers();
 arenaInfo = UI_GetSpecialArenaInfo( "final" );
 if( arenaInfo ) {
  maxTier = finalTier;
 }
 else {
  maxTier = finalTier - 1;
  if( maxTier < minTier ) {
   maxTier = minTier;
  }
 }

 level = UI_GetCurrentGame();
 if ( level == -1 ) {
  level = UI_GetNumSPArenas() - 1;
  if( maxTier == finalTier ) {
   level++;
  }
 }

 if( level == trainingLevel ) {
  currentSet = -1;
  currentGame = 0;
 }
 else {
  currentSet = level / ARENAS_PER_TIER;
  currentGame = level % ARENAS_PER_TIER;
 }

 UI_SPLevelMenu_Init();
 UI_PushMenu( &levelMenuInfo.menu );
 Menu_SetCursorToItem( &levelMenuInfo.menu, &levelMenuInfo.item_next );
}
