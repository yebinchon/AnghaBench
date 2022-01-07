
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_4__ {scalar_t__ numJoinGameTypes; } ;
struct TYPE_3__ {scalar_t__ integer; } ;


 int UI_BuildServerDisplayList (int ) ;
 int UI_SelectForKey (int) ;
 int qfalse ;
 int qtrue ;
 int trap_Cvar_SetValue (char*,scalar_t__) ;
 TYPE_2__ uiInfo ;
 TYPE_1__ ui_joinGameType ;

__attribute__((used)) static qboolean UI_JoinGameType_HandleKey(int flags, float *special, int key) {
 int select = UI_SelectForKey(key);
 if (select != 0) {
  ui_joinGameType.integer += select;

  if (ui_joinGameType.integer < 0) {
   ui_joinGameType.integer = uiInfo.numJoinGameTypes - 1;
  } else if (ui_joinGameType.integer >= uiInfo.numJoinGameTypes) {
   ui_joinGameType.integer = 0;
  }

  trap_Cvar_SetValue( "ui_joinGameType", ui_joinGameType.integer);
  UI_BuildServerDisplayList(qtrue);
  return qtrue;
 }
 return qfalse;
}
