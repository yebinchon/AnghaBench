
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef double* vec4_t ;
struct TYPE_5__ {float accuracy; float assistCount; float defendCount; float excellentCount; float impressiveCount; float perfect; float guantletCount; float captures; } ;
typedef TYPE_1__ score_t ;
struct TYPE_6__ {float w; scalar_t__ h; scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_2__ rectDef_t ;
typedef int qhandle_t ;
struct TYPE_7__ {size_t selectedScore; TYPE_1__* scores; } ;






 int CG_DrawPic (scalar_t__,scalar_t__,float,scalar_t__,int ) ;




 int CG_Text_Paint (scalar_t__,scalar_t__,float,double*,char*,int ,int ,int ) ;
 float CG_Text_Width (char*,float,int ) ;
 TYPE_3__ cg ;
 int trap_R_SetColor (double*) ;
 char* va (char*,int) ;

void CG_DrawMedal(int ownerDraw, rectDef_t *rect, float scale, vec4_t color, qhandle_t shader) {
 score_t *score = &cg.scores[cg.selectedScore];
 float value = 0;
 char *text = ((void*)0);
 color[3] = 0.25;

 switch (ownerDraw) {
  case 135:
   value = score->accuracy;
   break;
  case 134:
   value = score->assistCount;
   break;
  case 132:
   value = score->defendCount;
   break;
  case 131:
   value = score->excellentCount;
   break;
  case 129:
   value = score->impressiveCount;
   break;
  case 128:
   value = score->perfect;
   break;
  case 130:
   value = score->guantletCount;
   break;
  case 133:
   value = score->captures;
   break;
 }

 if (value > 0) {
  if (ownerDraw != 128) {
   if (ownerDraw == 135) {
    text = va("%i%%", (int)value);
    if (value > 50) {
     color[3] = 1.0;
    }
   } else {
    text = va("%i", (int)value);
    color[3] = 1.0;
   }
  } else {
   if (value) {
    color[3] = 1.0;
   }
   text = "Wow";
  }
 }

 trap_R_SetColor(color);
 CG_DrawPic( rect->x, rect->y, rect->w, rect->h, shader );

 if (text) {
  color[3] = 1.0;
  value = CG_Text_Width(text, scale, 0);
  CG_Text_Paint(rect->x + (rect->w - value) / 2, rect->y + rect->h + 10 , scale, color, text, 0, 0, 0);
 }
 trap_R_SetColor(((void*)0));

}
