
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vec4_t ;
struct TYPE_7__ {int y; int x; } ;
typedef TYPE_2__ rectDef_t ;
typedef scalar_t__ qboolean ;
struct TYPE_9__ {int characterCount; TYPE_1__* characterList; } ;
struct TYPE_8__ {scalar_t__ integer; } ;
struct TYPE_6__ {char* name; } ;


 scalar_t__ GT_TEAM ;
 int Text_Paint (int ,int ,float,int ,char const*,int ,int ,int) ;
 char* UI_GetBotNameByNumber (int) ;
 int UI_GetNumBots () ;
 int trap_Cvar_VariableValue (int ) ;
 TYPE_4__ uiInfo ;
 TYPE_3__ ui_actualNetGameType ;
 int va (char*,int) ;

__attribute__((used)) static void UI_DrawTeamMember(rectDef_t *rect, float scale, vec4_t color, qboolean blue, int num, int textStyle) {



 int value = trap_Cvar_VariableValue(va(blue ? "ui_blueteam%i" : "ui_redteam%i", num));
 const char *text;
 if (value <= 0) {
  text = "Closed";
 } else if (value == 1) {
  text = "Human";
 } else {
  value -= 2;

  if (ui_actualNetGameType.integer >= GT_TEAM) {
   if (value >= uiInfo.characterCount) {
    value = 0;
   }
   text = uiInfo.characterList[value].name;
  } else {
   if (value >= UI_GetNumBots()) {
    value = 0;
   }
   text = UI_GetBotNameByNumber(value);
  }
 }
  Text_Paint(rect->x, rect->y, scale, color, text, 0, 0, textStyle);
}
