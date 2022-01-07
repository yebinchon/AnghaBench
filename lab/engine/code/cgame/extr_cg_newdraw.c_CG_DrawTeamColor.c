
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int * vec4_t ;
struct TYPE_8__ {int h; int w; int y; int x; } ;
typedef TYPE_3__ rectDef_t ;
struct TYPE_9__ {TYPE_2__* snap; } ;
struct TYPE_6__ {int * persistant; } ;
struct TYPE_7__ {TYPE_1__ ps; } ;


 int CG_DrawTeamBackground (int ,int ,int ,int ,int ,int ) ;
 size_t PERS_TEAM ;
 TYPE_4__ cg ;

__attribute__((used)) static void CG_DrawTeamColor(rectDef_t *rect, vec4_t color) {
 CG_DrawTeamBackground(rect->x, rect->y, rect->w, rect->h, color[3], cg.snap->ps.persistant[PERS_TEAM]);
}
