
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QM_ACTIVATED ;
 int UI_PlayerSettingsMenu () ;

__attribute__((used)) static void UI_SPLevelMenu_PlayerEvent( void* ptr, int notification ) {
 if (notification != QM_ACTIVATED) {
  return;
 }

 UI_PlayerSettingsMenu();
}
