
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_6__ {TYPE_1__* gameTypes; } ;
struct TYPE_5__ {size_t integer; } ;
struct TYPE_4__ {scalar_t__ gtEnum; } ;


 scalar_t__ GT_HARVESTER ;
 scalar_t__ GT_OBELISK ;
 int trap_Cvar_Set (char*,int ) ;
 TYPE_3__ uiInfo ;
 TYPE_2__ ui_gameType ;
 int va (char*,int) ;

__attribute__((used)) static void UI_SetCapFragLimits(qboolean uiVars) {
 int cap = 5;
 int frag = 10;
 if (uiInfo.gameTypes[ui_gameType.integer].gtEnum == GT_OBELISK) {
  cap = 4;
 } else if (uiInfo.gameTypes[ui_gameType.integer].gtEnum == GT_HARVESTER) {
  cap = 15;
 }
 if (uiVars) {
  trap_Cvar_Set("ui_captureLimit", va("%d", cap));
  trap_Cvar_Set("ui_fragLimit", va("%d", frag));
 } else {
  trap_Cvar_Set("capturelimit", va("%d", cap));
  trap_Cvar_Set("fraglimit", va("%d", frag));
 }
}
