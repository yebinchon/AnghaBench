
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_10__ {int mapCount; TYPE_2__* mapList; TYPE_1__* gameTypes; } ;
struct TYPE_9__ {size_t integer; } ;
struct TYPE_8__ {size_t integer; } ;
struct TYPE_7__ {int typeBits; int active; } ;
struct TYPE_6__ {int gtEnum; } ;


 int GT_FFA ;
 int GT_SINGLE_PLAYER ;
 int GT_TEAM ;
 int qfalse ;
 int qtrue ;
 TYPE_5__ uiInfo ;
 TYPE_4__ ui_gameType ;
 TYPE_3__ ui_netGameType ;

__attribute__((used)) static int UI_MapCountByGameType(qboolean singlePlayer) {
 int i, c, game;
 c = 0;
 game = singlePlayer ? uiInfo.gameTypes[ui_gameType.integer].gtEnum : uiInfo.gameTypes[ui_netGameType.integer].gtEnum;
 if (game == GT_SINGLE_PLAYER) {
  game++;
 }
 if (game == GT_TEAM) {
  game = GT_FFA;
 }

 for (i = 0; i < uiInfo.mapCount; i++) {
  uiInfo.mapList[i].active = qfalse;
  if ( uiInfo.mapList[i].typeBits & (1 << game)) {
   if (singlePlayer) {
    if (!(uiInfo.mapList[i].typeBits & (1 << GT_SINGLE_PLAYER))) {
     continue;
    }
   }
   c++;
   uiInfo.mapList[i].active = qtrue;
  }
 }
 return c;
}
