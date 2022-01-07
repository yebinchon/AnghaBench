
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int selectedArenaInfo; } ;


 int QM_ACTIVATED ;
 int UI_SPSkillMenu (int ) ;
 scalar_t__ currentSet ;
 TYPE_1__ levelMenuInfo ;
 int selectedArena ;
 scalar_t__ selectedArenaSet ;

__attribute__((used)) static void UI_SPLevelMenu_NextEvent( void* ptr, int notification ) {
 if (notification != QM_ACTIVATED) {
  return;
 }

 if ( selectedArenaSet > currentSet ) {
  return;
 }

 if ( selectedArena == -1 ) {
  selectedArena = 0;
 }

 UI_SPSkillMenu( levelMenuInfo.selectedArenaInfo );
}
