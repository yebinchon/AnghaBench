
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef double* vec4_t ;
struct TYPE_6__ {int x; int y; int h; int w; } ;
typedef TYPE_1__ rectDef_t ;
struct TYPE_7__ {scalar_t__ style; scalar_t__ border; int borderSize; int flags; double* backColor; double* foreColor; int cinematic; double* borderColor; TYPE_1__ rect; int cinematicName; int background; int nextTime; } ;
typedef TYPE_2__ Window ;
struct TYPE_8__ {int (* playCinematic ) (int ,int,int,int ,int) ;int (* setColor ) (double*) ;int (* drawSides ) (int,int,int ,int,int) ;int (* drawTopBottom ) (int,int,int ,int,int) ;int (* drawRect ) (int,int,int ,int,int,double*) ;int (* drawCinematic ) (int,int,int,int ,int) ;int (* runCinematicFrame ) (int) ;int (* fillRect ) (int,int,int ,int,double*) ;int (* getTeamColor ) (double**) ;int (* drawHandlePic ) (int,int,int ,int,int ) ;} ;


 TYPE_5__* DC ;
 int Fade (int*,double*,float,int *,float,int ,float) ;
 int GradientBar_Paint (TYPE_1__*,double*) ;
 scalar_t__ WINDOW_BORDER_FULL ;
 scalar_t__ WINDOW_BORDER_HORZ ;
 scalar_t__ WINDOW_BORDER_KCGRADIENT ;
 scalar_t__ WINDOW_BORDER_VERT ;
 int WINDOW_FORECOLORSET ;
 scalar_t__ WINDOW_STYLE_CINEMATIC ;
 scalar_t__ WINDOW_STYLE_FILLED ;
 scalar_t__ WINDOW_STYLE_GRADIENT ;
 scalar_t__ WINDOW_STYLE_SHADER ;
 scalar_t__ WINDOW_STYLE_TEAMCOLOR ;
 scalar_t__ debugMode ;
 int qtrue ;
 int stub1 (int,int,int ,int,int,double*) ;
 int stub10 (int,int,int ,int,double*) ;
 int stub11 (int ,int,int,int ,int) ;
 int stub12 (int) ;
 int stub13 (int,int,int,int ,int) ;
 int stub14 (int,int,int ,int,int,double*) ;
 int stub15 (int,int,int ,int,int,double*) ;
 int stub16 (double*) ;
 int stub17 (int,int,int ,int,int) ;
 int stub18 (double*) ;
 int stub19 (double*) ;
 int stub2 (double*) ;
 int stub20 (int,int,int ,int,int) ;
 int stub21 (double*) ;
 int stub3 (int,int,int ,int,int ) ;
 int stub4 (double*) ;
 int stub5 (int,int,int ,int,double*) ;
 int stub6 (double*) ;
 int stub7 (int,int,int ,int,int ) ;
 int stub8 (double*) ;
 int stub9 (double**) ;

void Window_Paint(Window *w, float fadeAmount, float fadeClamp, float fadeCycle) {

  vec4_t color = {0};
  rectDef_t fillRect;

  if ( w == ((void*)0) ) {
    return;
  }

  if (debugMode) {
    color[0] = color[1] = color[2] = color[3] = 1;
    DC->drawRect(w->rect.x, w->rect.y, w->rect.w, w->rect.h, 1, color);
  }

  if (w->style == 0 && w->border == 0) {
    return;
  }

  fillRect = w->rect;

  if (w->border != 0) {
    fillRect.x += w->borderSize;
    fillRect.y += w->borderSize;
    fillRect.w -= w->borderSize + 1;
    fillRect.h -= w->borderSize + 1;
  }

  if (w->style == WINDOW_STYLE_FILLED) {

  if (w->background) {
    Fade(&w->flags, &w->backColor[3], fadeClamp, &w->nextTime, fadeCycle, qtrue, fadeAmount);
      DC->setColor(w->backColor);
     DC->drawHandlePic(fillRect.x, fillRect.y, fillRect.w, fillRect.h, w->background);
    DC->setColor(((void*)0));
  } else {
     DC->fillRect(fillRect.x, fillRect.y, fillRect.w, fillRect.h, w->backColor);
  }
  } else if (w->style == WINDOW_STYLE_GRADIENT) {
    GradientBar_Paint(&fillRect, w->backColor);

  } else if (w->style == WINDOW_STYLE_SHADER) {
    if (w->flags & WINDOW_FORECOLORSET) {
      DC->setColor(w->foreColor);
    }
    DC->drawHandlePic(fillRect.x, fillRect.y, fillRect.w, fillRect.h, w->background);
    DC->setColor(((void*)0));
  } else if (w->style == WINDOW_STYLE_TEAMCOLOR) {
    if (DC->getTeamColor) {
      DC->getTeamColor(&color);
      DC->fillRect(fillRect.x, fillRect.y, fillRect.w, fillRect.h, color);
    }
  } else if (w->style == WINDOW_STYLE_CINEMATIC) {
  if (w->cinematic == -1) {
   w->cinematic = DC->playCinematic(w->cinematicName, fillRect.x, fillRect.y, fillRect.w, fillRect.h);
   if (w->cinematic == -1) {
    w->cinematic = -2;
   }
  }
  if (w->cinematic >= 0) {
     DC->runCinematicFrame(w->cinematic);
   DC->drawCinematic(w->cinematic, fillRect.x, fillRect.y, fillRect.w, fillRect.h);
  }
  }

  if (w->border == WINDOW_BORDER_FULL) {


    if (w->style == WINDOW_STYLE_TEAMCOLOR) {
      if (color[0] > 0) {

        color[0] = 1;
        color[1] = color[2] = .5;

      } else {
        color[2] = 1;
        color[0] = color[1] = .5;
      }
      color[3] = 1;
      DC->drawRect(w->rect.x, w->rect.y, w->rect.w, w->rect.h, w->borderSize, color);
    } else {
      DC->drawRect(w->rect.x, w->rect.y, w->rect.w, w->rect.h, w->borderSize, w->borderColor);
    }
  } else if (w->border == WINDOW_BORDER_HORZ) {

    DC->setColor(w->borderColor);
    DC->drawTopBottom(w->rect.x, w->rect.y, w->rect.w, w->rect.h, w->borderSize);
   DC->setColor( ((void*)0) );
  } else if (w->border == WINDOW_BORDER_VERT) {

    DC->setColor(w->borderColor);
    DC->drawSides(w->rect.x, w->rect.y, w->rect.w, w->rect.h, w->borderSize);
   DC->setColor( ((void*)0) );
  } else if (w->border == WINDOW_BORDER_KCGRADIENT) {

    rectDef_t r = w->rect;
    r.h = w->borderSize;
    GradientBar_Paint(&r, w->borderColor);
    r.y = w->rect.y + w->rect.h - 1;
    GradientBar_Paint(&r, w->borderColor);
  }

}
