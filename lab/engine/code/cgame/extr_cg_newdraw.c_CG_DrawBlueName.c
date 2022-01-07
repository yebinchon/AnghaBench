
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vec4_t ;
struct TYPE_4__ {scalar_t__ h; scalar_t__ y; int x; } ;
typedef TYPE_1__ rectDef_t ;
struct TYPE_5__ {int string; } ;


 int CG_Text_Paint (int ,scalar_t__,float,int ,int ,int ,int ,int) ;
 TYPE_2__ cg_blueTeamName ;

__attribute__((used)) static void CG_DrawBlueName(rectDef_t *rect, float scale, vec4_t color, int textStyle ) {
  CG_Text_Paint(rect->x, rect->y + rect->h, scale, color, cg_blueTeamName.string, 0, 0, textStyle);
}
