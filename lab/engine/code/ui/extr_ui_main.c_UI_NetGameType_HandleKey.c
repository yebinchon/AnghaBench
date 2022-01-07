
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_6__ {int numGameTypes; TYPE_1__* gameTypes; } ;
struct TYPE_5__ {int integer; } ;
struct TYPE_4__ {int gtEnum; } ;


 int FEEDER_ALLMAPS ;
 int Menu_SetFeederSelection (int *,int ,int ,int *) ;
 int UI_MapCountByGameType (int ) ;
 int UI_SelectForKey (int) ;
 int qfalse ;
 int qtrue ;
 int trap_Cvar_SetValue (char*,int) ;
 TYPE_3__ uiInfo ;
 TYPE_2__ ui_netGameType ;

__attribute__((used)) static qboolean UI_NetGameType_HandleKey(int flags, float *special, int key) {
 int select = UI_SelectForKey(key);
 if (select != 0) {
  ui_netGameType.integer += select;

  if (ui_netGameType.integer < 0) {
   ui_netGameType.integer = uiInfo.numGameTypes - 1;
  } else if (ui_netGameType.integer >= uiInfo.numGameTypes) {
   ui_netGameType.integer = 0;
  }

  trap_Cvar_SetValue( "ui_netGameType", ui_netGameType.integer);
  trap_Cvar_SetValue( "ui_actualnetGameType", uiInfo.gameTypes[ui_netGameType.integer].gtEnum);
  trap_Cvar_SetValue( "ui_currentNetMap", 0);
  UI_MapCountByGameType(qfalse);
  Menu_SetFeederSelection(((void*)0), FEEDER_ALLMAPS, 0, ((void*)0));
  return qtrue;
 }
 return qfalse;
}
