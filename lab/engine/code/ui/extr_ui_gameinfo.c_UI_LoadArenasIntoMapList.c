
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t mapCount; TYPE_1__* mapList; } ;
struct TYPE_3__ {int cinematic; int levelShot; int typeBits; void* mapLoadName; void* imageName; void* mapName; } ;


 int GT_1FCTF ;
 int GT_CTF ;
 int GT_FFA ;
 int GT_HARVESTER ;
 int GT_OBELISK ;
 int GT_TOURNAMENT ;
 char* Info_ValueForKey (int ,char*) ;
 size_t MAX_MAPS ;
 void* String_Alloc (char*) ;
 scalar_t__ strstr (char*,char*) ;
 TYPE_2__ uiInfo ;
 int * ui_arenaInfos ;
 int ui_numArenas ;
 char* va (char*,void*) ;

void UI_LoadArenasIntoMapList( void ) {
 int n;
 char *type;

 uiInfo.mapCount = 0;

 for( n = 0; n < ui_numArenas; n++ ) {


  uiInfo.mapList[uiInfo.mapCount].cinematic = -1;
  uiInfo.mapList[uiInfo.mapCount].mapLoadName = String_Alloc(Info_ValueForKey(ui_arenaInfos[n], "map"));
  uiInfo.mapList[uiInfo.mapCount].mapName = String_Alloc(Info_ValueForKey(ui_arenaInfos[n], "longname"));
  uiInfo.mapList[uiInfo.mapCount].levelShot = -1;
  uiInfo.mapList[uiInfo.mapCount].imageName = String_Alloc(va("levelshots/%s", uiInfo.mapList[uiInfo.mapCount].mapLoadName));
  uiInfo.mapList[uiInfo.mapCount].typeBits = 0;

  type = Info_ValueForKey( ui_arenaInfos[n], "type" );

  if( *type ) {
   if( strstr( type, "ffa" ) ) {
    uiInfo.mapList[uiInfo.mapCount].typeBits |= (1 << GT_FFA);
   }
   if( strstr( type, "tourney" ) ) {
    uiInfo.mapList[uiInfo.mapCount].typeBits |= (1 << GT_TOURNAMENT);
   }
   if( strstr( type, "ctf" ) ) {
    uiInfo.mapList[uiInfo.mapCount].typeBits |= (1 << GT_CTF);
   }
   if( strstr( type, "oneflag" ) ) {
    uiInfo.mapList[uiInfo.mapCount].typeBits |= (1 << GT_1FCTF);
   }
   if( strstr( type, "overload" ) ) {
    uiInfo.mapList[uiInfo.mapCount].typeBits |= (1 << GT_OBELISK);
   }
   if( strstr( type, "harvester" ) ) {
    uiInfo.mapList[uiInfo.mapCount].typeBits |= (1 << GT_HARVESTER);
   }
  } else {
   uiInfo.mapList[uiInfo.mapCount].typeBits |= (1 << GT_FFA);
  }

  uiInfo.mapCount++;
  if (uiInfo.mapCount >= MAX_MAPS) {
   break;
  }
 }
}
