
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vec4_t ;
struct TYPE_10__ {int y; int x; } ;
typedef TYPE_3__ rectDef_t ;
struct TYPE_13__ {size_t mapCount; TYPE_2__* gameTypes; TYPE_1__* mapList; } ;
struct TYPE_12__ {size_t integer; } ;
struct TYPE_11__ {size_t integer; } ;
struct TYPE_9__ {size_t gtEnum; } ;
struct TYPE_8__ {int* timeToBeat; } ;


 int Text_Paint (int ,int ,float,int ,int ,int ,int ,int) ;
 int trap_Cvar_Set (char*,char*) ;
 TYPE_6__ uiInfo ;
 TYPE_5__ ui_currentMap ;
 TYPE_4__ ui_gameType ;
 int va (char*,int,int) ;

__attribute__((used)) static void UI_DrawMapTimeToBeat(rectDef_t *rect, float scale, vec4_t color, int textStyle) {
 int minutes, seconds, time;
 if (ui_currentMap.integer < 0 || ui_currentMap.integer > uiInfo.mapCount) {
  ui_currentMap.integer = 0;
  trap_Cvar_Set("ui_currentMap", "0");
 }

 time = uiInfo.mapList[ui_currentMap.integer].timeToBeat[uiInfo.gameTypes[ui_gameType.integer].gtEnum];

 minutes = time / 60;
 seconds = time % 60;

  Text_Paint(rect->x, rect->y, scale, color, va("%02i:%02i", minutes, seconds), 0, 0, textStyle);
}
