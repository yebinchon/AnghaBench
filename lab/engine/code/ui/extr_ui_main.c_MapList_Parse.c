
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_4__ {size_t mapCount; TYPE_1__* mapList; } ;
struct TYPE_3__ {int typeBits; int cinematic; int mapLoadName; int levelShot; int * timeToBeat; int opponentName; int teamMembers; int mapName; } ;


 char* COM_ParseExt (char**,int ) ;
 int Com_Printf (char*) ;
 int Int_Parse (char**,int *) ;
 size_t MAX_MAPS ;
 scalar_t__ Q_stricmp (char*,char*) ;
 int String_Parse (char**,int *) ;
 int qfalse ;
 int qtrue ;
 int trap_R_RegisterShaderNoMip (int ) ;
 TYPE_2__ uiInfo ;
 int va (char*,int ) ;

__attribute__((used)) static qboolean MapList_Parse(char **p) {
 char *token;

 token = COM_ParseExt(p, qtrue);

 if (token[0] != '{') {
  return qfalse;
 }

 uiInfo.mapCount = 0;

 while ( 1 ) {
  token = COM_ParseExt(p, qtrue);

  if (Q_stricmp(token, "}") == 0) {
   return qtrue;
  }

  if (!token[0]) {
   return qfalse;
  }

  if (token[0] == '{') {
   if (!String_Parse(p, &uiInfo.mapList[uiInfo.mapCount].mapName) || !String_Parse(p, &uiInfo.mapList[uiInfo.mapCount].mapLoadName)
    ||!Int_Parse(p, &uiInfo.mapList[uiInfo.mapCount].teamMembers) ) {
    return qfalse;
   }

   if (!String_Parse(p, &uiInfo.mapList[uiInfo.mapCount].opponentName)) {
    return qfalse;
   }

   uiInfo.mapList[uiInfo.mapCount].typeBits = 0;

   while (1) {
    token = COM_ParseExt(p, qtrue);
    if (token[0] >= '0' && token[0] <= '9') {
     uiInfo.mapList[uiInfo.mapCount].typeBits |= (1 << (token[0] - 0x030));
     if (!Int_Parse(p, &uiInfo.mapList[uiInfo.mapCount].timeToBeat[token[0] - 0x30])) {
      return qfalse;
     }
    } else {
     break;
    }
   }






    uiInfo.mapList[uiInfo.mapCount].cinematic = -1;
   uiInfo.mapList[uiInfo.mapCount].levelShot = trap_R_RegisterShaderNoMip(va("levelshots/%s_small", uiInfo.mapList[uiInfo.mapCount].mapLoadName));

   if (uiInfo.mapCount < MAX_MAPS) {
    uiInfo.mapCount++;
   } else {
    Com_Printf("Too many maps, last one replaced!\n");
   }
  }
 }
 return qfalse;
}
