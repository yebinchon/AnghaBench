
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
struct TYPE_6__ {int multiplayer; TYPE_1__ gametype; int page; int maxpages; } ;






 int QM_ACTIVATED ;
 int StartServer_Update () ;
 int UI_PopMenu () ;
 int UI_ServerOptionsMenu (int ) ;
 int * gametype_remap ;
 TYPE_3__ s_startserver ;
 int trap_Cvar_SetValue (char*,int ) ;

__attribute__((used)) static void StartServer_MenuEvent( void* ptr, int event ) {
 if( event != QM_ACTIVATED ) {
  return;
 }

 switch( ((menucommon_s*)ptr)->id ) {
 case 130:
  if( s_startserver.page > 0 ) {
   s_startserver.page--;
   StartServer_Update();
  }
  break;

 case 131:
  if( s_startserver.page < s_startserver.maxpages - 1 ) {
   s_startserver.page++;
   StartServer_Update();
  }
  break;

 case 128:
  trap_Cvar_SetValue( "g_gameType", gametype_remap[s_startserver.gametype.curvalue] );
  UI_ServerOptionsMenu( s_startserver.multiplayer );
  break;

 case 129:
  UI_PopMenu();
  break;
 }
}
