
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_5__ {scalar_t__ realTime; } ;
struct TYPE_6__ {scalar_t__ refreshtime; int refreshActive; } ;
struct TYPE_8__ {TYPE_1__ uiDC; TYPE_2__ serverStatus; } ;
struct TYPE_7__ {scalar_t__ integer; } ;


 int AS_GLOBAL ;
 int AS_LOCAL ;
 int EXEC_NOW ;
 scalar_t__ UIAS_FAVORITES ;
 scalar_t__ UIAS_LOCAL ;
 int UI_BuildServerDisplayList (int) ;
 int UI_SourceForLAN () ;
 int UI_StopServerRefresh () ;
 int qfalse ;
 int qtrue ;
 int trap_Cmd_ExecuteText (int ,char*) ;
 scalar_t__ trap_LAN_GetServerCount (int ) ;
 scalar_t__ trap_LAN_UpdateVisiblePings (int ) ;
 TYPE_4__ uiInfo ;
 TYPE_3__ ui_netSource ;

__attribute__((used)) static void UI_DoServerRefresh( void )
{
 qboolean wait = qfalse;

 if (!uiInfo.serverStatus.refreshActive) {
  return;
 }
 if (ui_netSource.integer != UIAS_FAVORITES) {
  if (ui_netSource.integer == UIAS_LOCAL) {
   if (!trap_LAN_GetServerCount(AS_LOCAL)) {
    wait = qtrue;
   }
  } else {
   if (trap_LAN_GetServerCount(AS_GLOBAL) < 0) {
    wait = qtrue;
   }
  }
 }

 if (uiInfo.uiDC.realTime < uiInfo.serverStatus.refreshtime) {
  if (wait) {
   return;
  }
 }


 if (trap_LAN_UpdateVisiblePings(UI_SourceForLAN())) {
  uiInfo.serverStatus.refreshtime = uiInfo.uiDC.realTime + 1000;
 } else if (!wait) {

  UI_BuildServerDisplayList(2);

  UI_StopServerRefresh();
 } else if ( ui_netSource.integer == UIAS_LOCAL ) {

  trap_Cmd_ExecuteText( EXEC_NOW, "localservers\n" );
  uiInfo.serverStatus.refreshtime = uiInfo.uiDC.realTime + 5000;
 }

 UI_BuildServerDisplayList(qfalse);
}
