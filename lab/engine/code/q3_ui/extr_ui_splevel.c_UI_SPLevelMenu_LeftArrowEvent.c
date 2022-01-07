
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QM_ACTIVATED ;
 int UI_SPLevelMenu_SetMenuItems () ;
 scalar_t__ minTier ;
 scalar_t__ selectedArenaSet ;

__attribute__((used)) static void UI_SPLevelMenu_LeftArrowEvent( void* ptr, int notification ) {
 if (notification != QM_ACTIVATED) {
  return;
 }

 if ( selectedArenaSet == minTier ) {
  return;
 }

 selectedArenaSet--;
 UI_SPLevelMenu_SetMenuItems();
}
