
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vec4_t ;
struct TYPE_6__ {int y; int x; } ;
typedef TYPE_2__ rectDef_t ;
struct TYPE_7__ {int botIndex; TYPE_1__* characterList; } ;
struct TYPE_5__ {char* name; } ;


 int GT_TEAM ;
 int Text_Paint (int ,int ,float,int ,char const*,int ,int ,int) ;
 char* UI_GetBotNameByNumber (int) ;
 int trap_Cvar_VariableValue (char*) ;
 TYPE_3__ uiInfo ;

__attribute__((used)) static void UI_DrawBotName(rectDef_t *rect, float scale, vec4_t color, int textStyle) {
 int value = uiInfo.botIndex;
 int game = trap_Cvar_VariableValue("g_gametype");
 const char *text;
 if (game >= GT_TEAM) {
  text = uiInfo.characterList[value].name;
 } else {
  text = UI_GetBotNameByNumber(value);
 }
  Text_Paint(rect->x, rect->y, scale, color, text, 0, 0, textStyle);
}
