
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QM_ACTIVATED ;
 int UI_ConfirmMenu (char*,int ,int ) ;
 int UI_SPLevelMenu_ResetAction ;
 int UI_SPLevelMenu_ResetDraw ;

__attribute__((used)) static void UI_SPLevelMenu_ResetEvent( void* ptr, int event )
{
 if (event != QM_ACTIVATED) {
  return;
 }

 UI_ConfirmMenu( "RESET GAME?", UI_SPLevelMenu_ResetDraw, UI_SPLevelMenu_ResetAction );
}
