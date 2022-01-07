
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vec4_t ;
struct TYPE_4__ {int y; int x; } ;
typedef TYPE_1__ rectDef_t ;
struct TYPE_5__ {size_t integer; } ;


 int Text_Paint (int ,int ,float,int ,int ,int ,int ,int) ;
 int * netSources ;
 size_t numNetSources ;
 TYPE_2__ ui_netSource ;
 int va (char*,int ) ;

__attribute__((used)) static void UI_DrawNetSource(rectDef_t *rect, float scale, vec4_t color, int textStyle) {
 if (ui_netSource.integer < 0 || ui_netSource.integer >= numNetSources) {
  ui_netSource.integer = 0;
 }
  Text_Paint(rect->x, rect->y, scale, color, va("Source: %s", netSources[ui_netSource.integer]), 0, 0, textStyle);
}
