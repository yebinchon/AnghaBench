
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int id; } ;
typedef TYPE_2__ menucommon_s ;
struct TYPE_4__ {size_t curvalue; } ;
struct TYPE_6__ {TYPE_1__ list; int * fs_gameList; } ;


 int EXEC_APPEND ;


 int QM_ACTIVATED ;
 int UI_PopMenu () ;
 TYPE_3__ s_mods ;
 int trap_Cmd_ExecuteText (int ,char*) ;
 int trap_Cvar_Set (char*,int ) ;

__attribute__((used)) static void UI_Mods_MenuEvent( void *ptr, int event ) {
 if( event != QM_ACTIVATED ) {
  return;
 }

 switch ( ((menucommon_s*)ptr)->id ) {
 case 128:
  trap_Cvar_Set( "fs_game", s_mods.fs_gameList[s_mods.list.curvalue] );
  trap_Cmd_ExecuteText( EXEC_APPEND, "vid_restart;" );
  UI_PopMenu();
  break;

 case 129:
  UI_PopMenu();
  break;
 }
}
