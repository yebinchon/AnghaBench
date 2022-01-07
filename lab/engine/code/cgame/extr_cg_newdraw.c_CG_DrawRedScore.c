
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vec4_t ;
struct TYPE_4__ {scalar_t__ h; scalar_t__ y; scalar_t__ w; scalar_t__ x; } ;
typedef TYPE_1__ rectDef_t ;
typedef int qhandle_t ;
typedef int num ;
struct TYPE_5__ {scalar_t__ scores1; } ;


 int CG_Text_Paint (scalar_t__,scalar_t__,float,int ,char*,int ,int ,int) ;
 int CG_Text_Width (char*,float,int ) ;
 int Com_sprintf (char*,int,char*,...) ;
 scalar_t__ SCORE_NOT_PRESENT ;
 TYPE_2__ cgs ;

__attribute__((used)) static void CG_DrawRedScore(rectDef_t *rect, float scale, vec4_t color, qhandle_t shader, int textStyle ) {
 int value;
 char num[16];
 if ( cgs.scores1 == SCORE_NOT_PRESENT ) {
  Com_sprintf (num, sizeof(num), "-");
 }
 else {
  Com_sprintf (num, sizeof(num), "%i", cgs.scores1);
 }
 value = CG_Text_Width(num, scale, 0);
 CG_Text_Paint(rect->x + rect->w - value, rect->y + rect->h, scale, color, num, 0, 0, textStyle);
}
