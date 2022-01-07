
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_15__ {int id; } ;
typedef TYPE_7__ menucommon_s ;
struct TYPE_14__ {int curvalue; } ;
struct TYPE_13__ {int curvalue; } ;
struct TYPE_12__ {int curvalue; } ;
struct TYPE_11__ {int curvalue; } ;
struct TYPE_10__ {int curvalue; } ;
struct TYPE_9__ {int curvalue; } ;
struct TYPE_16__ {TYPE_6__ punkbuster; int list; TYPE_5__ showempty; TYPE_4__ showfull; TYPE_3__ sortkey; TYPE_2__ gametype; TYPE_1__ master; } ;


 int ArenaServers_Go () ;
 int ArenaServers_Remove () ;
 int ArenaServers_SaveChanges () ;
 int ArenaServers_SetType (int ) ;
 int ArenaServers_Sort (int ) ;
 int ArenaServers_StartRefresh () ;
 int ArenaServers_StopRefresh () ;
 int ArenaServers_UpdateMenu () ;
 int ArenaServers_UpdatePicture () ;
 int K_DOWNARROW ;
 int K_UPARROW ;
 int Punkbuster_ConfirmDisable ;
 int Punkbuster_ConfirmEnable ;
 int QM_ACTIVATED ;
 int QM_GOTFOCUS ;
 int ScrollList_Key (int *,int ) ;
 int UI_CENTER ;
 int UI_ConfirmMenu_Style (char*,int,int ,int ) ;
 int UI_INVERSE ;
 int UI_PopMenu () ;
 int UI_SMALLFONT ;
 int UI_SpecifyServerMenu () ;
 int UI_StartServerMenu (int ) ;
 TYPE_8__ g_arenaservers ;
 int g_emptyservers ;
 int g_fullservers ;
 int g_gametype ;
 int qtrue ;
 int trap_Cvar_SetValue (char*,int ) ;

__attribute__((used)) static void ArenaServers_Event( void* ptr, int event ) {
 int id;

 id = ((menucommon_s*)ptr)->id;

 if( event != QM_ACTIVATED && id != 138 ) {
  return;
 }

 switch( id ) {
 case 137:
  g_arenaservers.master.curvalue = ArenaServers_SetType(g_arenaservers.master.curvalue);
  trap_Cvar_SetValue( "ui_browserMaster", g_arenaservers.master.curvalue);
  break;

 case 139:
  trap_Cvar_SetValue( "ui_browserGameType", g_arenaservers.gametype.curvalue );
  g_gametype = g_arenaservers.gametype.curvalue;
  ArenaServers_UpdateMenu();
  break;

 case 129:
  trap_Cvar_SetValue( "ui_browserSortKey", g_arenaservers.sortkey.curvalue );
  ArenaServers_Sort( g_arenaservers.sortkey.curvalue );
  ArenaServers_UpdateMenu();
  break;

 case 130:
  trap_Cvar_SetValue( "ui_browserShowFull", g_arenaservers.showfull.curvalue );
  g_fullservers = g_arenaservers.showfull.curvalue;
  ArenaServers_UpdateMenu();
  break;

 case 131:
  trap_Cvar_SetValue( "ui_browserShowEmpty", g_arenaservers.showempty.curvalue );
  g_emptyservers = g_arenaservers.showempty.curvalue;
  ArenaServers_UpdateMenu();
  break;

 case 138:
  if( event == QM_GOTFOCUS ) {
   ArenaServers_UpdatePicture();
  }
  break;

 case 132:
  ScrollList_Key( &g_arenaservers.list, K_UPARROW );
  break;

 case 133:
  ScrollList_Key( &g_arenaservers.list, K_DOWNARROW );
  break;

 case 142:
  ArenaServers_StopRefresh();
  ArenaServers_SaveChanges();
  UI_PopMenu();
  break;

 case 135:
  ArenaServers_StartRefresh();
  break;

 case 128:
  UI_SpecifyServerMenu();
  break;

 case 140:
  UI_StartServerMenu( qtrue );
  break;

 case 141:
  ArenaServers_Go();
  break;

 case 134:
  ArenaServers_Remove();
  ArenaServers_UpdateMenu();
  break;

 case 136:
  if (g_arenaservers.punkbuster.curvalue)
  {
   UI_ConfirmMenu_Style( "Enable Punkbuster?", UI_CENTER|UI_INVERSE|UI_SMALLFONT, 0, Punkbuster_ConfirmEnable );
  }
  else
  {
   UI_ConfirmMenu_Style( "Disable Punkbuster?", UI_CENTER|UI_INVERSE|UI_SMALLFONT, 0, Punkbuster_ConfirmDisable );
  }
  break;
 }
}
