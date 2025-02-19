
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef double* vec4_t ;
struct TYPE_9__ {int y; int x; } ;
typedef TYPE_3__ rectDef_t ;
struct TYPE_8__ {int realTime; } ;
struct TYPE_7__ {scalar_t__ refreshActive; } ;
struct TYPE_11__ {TYPE_2__ uiDC; TYPE_1__ serverStatus; } ;
struct TYPE_10__ {char* integer; } ;


 int LerpColor (double*,double*,double*,double) ;
 int PULSE_DIVISOR ;
 int Q_strncpyz (char*,int ,int) ;
 int Text_Paint (int ,int ,float,double*,int ,int ,int ,int) ;
 int UI_Cvar_VariableString (int ) ;
 int UI_SourceForLAN () ;
 double sin (int) ;
 char* trap_LAN_GetServerCount (int ) ;
 TYPE_5__ uiInfo ;
 TYPE_4__ ui_netSource ;
 int va (char*,char*) ;

__attribute__((used)) static void UI_DrawServerRefreshDate(rectDef_t *rect, float scale, vec4_t color, int textStyle) {
 if (uiInfo.serverStatus.refreshActive) {
  vec4_t lowLight, newColor;
  lowLight[0] = 0.8 * color[0];
  lowLight[1] = 0.8 * color[1];
  lowLight[2] = 0.8 * color[2];
  lowLight[3] = 0.8 * color[3];
  LerpColor(color,lowLight,newColor,0.5+0.5*sin(uiInfo.uiDC.realTime / PULSE_DIVISOR));
   Text_Paint(rect->x, rect->y, scale, newColor, va("Getting info for %d servers (ESC to cancel)", trap_LAN_GetServerCount(UI_SourceForLAN())), 0, 0, textStyle);
 } else {
  char buff[64];
  Q_strncpyz(buff, UI_Cvar_VariableString(va("ui_lastServerRefresh_%i", ui_netSource.integer)), 64);
   Text_Paint(rect->x, rect->y, scale, color, va("Refresh Time: %s", buff), 0, 0, textStyle);
 }
}
