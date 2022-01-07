
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_9__ {int string; } ;
typedef TYPE_3__ pc_token_t ;
struct TYPE_7__ {char const* cursorStr; int fadeCycle; int * shadowColor; int shadowFadeClamp; int shadowY; int shadowX; int fadeAmount; int fadeClamp; void* cursor; void* menuBuzzSound; void* itemFocusSound; void* menuExitSound; void* menuEnterSound; void* gradientBar; int bigFont; int smallFont; int fontRegistered; int textFont; } ;
struct TYPE_8__ {TYPE_1__ Assets; } ;
struct TYPE_10__ {TYPE_2__ uiDC; } ;


 int PC_Color_Parse (int,int **) ;
 int PC_Float_Parse (int,int *) ;
 int PC_Int_Parse (int,int*) ;
 int PC_String_Parse (int,char const**) ;
 scalar_t__ Q_stricmp (int ,char*) ;
 int memset (TYPE_3__*,int ,int) ;
 int qfalse ;
 int qtrue ;
 int trap_PC_ReadToken (int,TYPE_3__*) ;
 int trap_R_RegisterFont (char const*,int,int *) ;
 void* trap_R_RegisterShaderNoMip (char const*) ;
 void* trap_S_RegisterSound (char const*,int ) ;
 TYPE_4__ uiInfo ;

qboolean Asset_Parse(int handle) {
 pc_token_t token;
 const char *tempStr;

 if (!trap_PC_ReadToken(handle, &token))
  return qfalse;
 if (Q_stricmp(token.string, "{") != 0) {
  return qfalse;
 }

 while ( 1 ) {

  memset(&token, 0, sizeof(pc_token_t));

  if (!trap_PC_ReadToken(handle, &token))
   return qfalse;

  if (Q_stricmp(token.string, "}") == 0) {
   return qtrue;
  }


  if (Q_stricmp(token.string, "font") == 0) {
   int pointSize;
   if (!PC_String_Parse(handle, &tempStr) || !PC_Int_Parse(handle,&pointSize)) {
    return qfalse;
   }
   trap_R_RegisterFont(tempStr, pointSize, &uiInfo.uiDC.Assets.textFont);
   uiInfo.uiDC.Assets.fontRegistered = qtrue;
   continue;
  }

  if (Q_stricmp(token.string, "smallFont") == 0) {
   int pointSize;
   if (!PC_String_Parse(handle, &tempStr) || !PC_Int_Parse(handle,&pointSize)) {
    return qfalse;
   }
   trap_R_RegisterFont(tempStr, pointSize, &uiInfo.uiDC.Assets.smallFont);
   continue;
  }

  if (Q_stricmp(token.string, "bigFont") == 0) {
   int pointSize;
   if (!PC_String_Parse(handle, &tempStr) || !PC_Int_Parse(handle,&pointSize)) {
    return qfalse;
   }
   trap_R_RegisterFont(tempStr, pointSize, &uiInfo.uiDC.Assets.bigFont);
   continue;
  }



  if (Q_stricmp(token.string, "gradientbar") == 0) {
   if (!PC_String_Parse(handle, &tempStr)) {
    return qfalse;
   }
   uiInfo.uiDC.Assets.gradientBar = trap_R_RegisterShaderNoMip(tempStr);
   continue;
  }


  if (Q_stricmp(token.string, "menuEnterSound") == 0) {
   if (!PC_String_Parse(handle, &tempStr)) {
    return qfalse;
   }
   uiInfo.uiDC.Assets.menuEnterSound = trap_S_RegisterSound( tempStr, qfalse );
   continue;
  }


  if (Q_stricmp(token.string, "menuExitSound") == 0) {
   if (!PC_String_Parse(handle, &tempStr)) {
    return qfalse;
   }
   uiInfo.uiDC.Assets.menuExitSound = trap_S_RegisterSound( tempStr, qfalse );
   continue;
  }


  if (Q_stricmp(token.string, "itemFocusSound") == 0) {
   if (!PC_String_Parse(handle, &tempStr)) {
    return qfalse;
   }
   uiInfo.uiDC.Assets.itemFocusSound = trap_S_RegisterSound( tempStr, qfalse );
   continue;
  }


  if (Q_stricmp(token.string, "menuBuzzSound") == 0) {
   if (!PC_String_Parse(handle, &tempStr)) {
    return qfalse;
   }
   uiInfo.uiDC.Assets.menuBuzzSound = trap_S_RegisterSound( tempStr, qfalse );
   continue;
  }

  if (Q_stricmp(token.string, "cursor") == 0) {
   if (!PC_String_Parse(handle, &uiInfo.uiDC.Assets.cursorStr)) {
    return qfalse;
   }
   uiInfo.uiDC.Assets.cursor = trap_R_RegisterShaderNoMip( uiInfo.uiDC.Assets.cursorStr);
   continue;
  }

  if (Q_stricmp(token.string, "fadeClamp") == 0) {
   if (!PC_Float_Parse(handle, &uiInfo.uiDC.Assets.fadeClamp)) {
    return qfalse;
   }
   continue;
  }

  if (Q_stricmp(token.string, "fadeCycle") == 0) {
   if (!PC_Int_Parse(handle, &uiInfo.uiDC.Assets.fadeCycle)) {
    return qfalse;
   }
   continue;
  }

  if (Q_stricmp(token.string, "fadeAmount") == 0) {
   if (!PC_Float_Parse(handle, &uiInfo.uiDC.Assets.fadeAmount)) {
    return qfalse;
   }
   continue;
  }

  if (Q_stricmp(token.string, "shadowX") == 0) {
   if (!PC_Float_Parse(handle, &uiInfo.uiDC.Assets.shadowX)) {
    return qfalse;
   }
   continue;
  }

  if (Q_stricmp(token.string, "shadowY") == 0) {
   if (!PC_Float_Parse(handle, &uiInfo.uiDC.Assets.shadowY)) {
    return qfalse;
   }
   continue;
  }

  if (Q_stricmp(token.string, "shadowColor") == 0) {
   if (!PC_Color_Parse(handle, &uiInfo.uiDC.Assets.shadowColor)) {
    return qfalse;
   }
   uiInfo.uiDC.Assets.shadowFadeClamp = uiInfo.uiDC.Assets.shadowColor[3];
   continue;
  }

 }
 return qfalse;
}
