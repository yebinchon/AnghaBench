
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int Thickness; int MiterLimit; int Join; int Cap; scalar_t__ DashPhase; scalar_t__ NumDashes; int * Dashes; } ;
typedef TYPE_1__ uiDrawStrokeParams ;
typedef int uiDrawPath ;
struct TYPE_8__ {int A; scalar_t__ B; scalar_t__ G; scalar_t__ R; int Type; } ;
typedef TYPE_2__ uiDrawBrush ;
struct TYPE_9__ {int Context; } ;
typedef TYPE_3__ uiAreaDrawParams ;


 int uiDrawBrushTypeSolid ;
 int uiDrawDefaultMiterLimit ;
 int uiDrawFillModeWinding ;
 int uiDrawFreePath (int *) ;
 int uiDrawLineCapFlat ;
 int uiDrawLineJoinMiter ;
 int * uiDrawNewPath (int ) ;
 int uiDrawPathArcTo (int *,int,int,int,double,double,int ) ;
 int uiDrawPathEnd (int *) ;
 int uiDrawPathNewFigure (int *,int,int) ;
 int uiDrawPathNewFigureWithArc (int *,int,int,int,double,double,int ) ;
 int uiDrawStroke (int ,int *,TYPE_2__*,TYPE_1__*) ;
 double uiPi ;

__attribute__((used)) static void drawArcs(uiAreaDrawParams *p)
{
 uiDrawPath *path;
 int start = 20;
 int step = 20;
 int rad = 25;
 int x, y;
 double angle;
 double add;
 int i;
 uiDrawBrush brush;
 uiDrawStrokeParams sp;

 sp.Dashes = ((void*)0);
 sp.NumDashes = 0;
 sp.DashPhase = 0;

 path = uiDrawNewPath(uiDrawFillModeWinding);

 add = (2.0 * uiPi) / 12;

 x = start + rad;
 y = start + rad;
 angle = 0;
 for (i = 0; i < 13; i++) {
  uiDrawPathNewFigureWithArc(path,
   x, y,
   rad,
   0, angle,
   0);
  angle += add;
  x += 2 * rad + step;
 }

 y += 2 * rad + step;
 x = start + rad;
 angle = 0;
 for (i = 0; i < 13; i++) {
  uiDrawPathNewFigure(path, x, y);
  uiDrawPathArcTo(path,
   x, y,
   rad,
   0, angle,
   0);
  angle += add;
  x += 2 * rad + step;
 }

 y += 2 * rad + step;
 x = start + rad;
 angle = 0;
 for (i = 0; i < 13; i++) {
  uiDrawPathNewFigureWithArc(path,
   x, y,
   rad,
   (uiPi / 4), angle,
   0);
  angle += add;
  x += 2 * rad + step;
 }

 y += 2 * rad + step;
 x = start + rad;
 angle = 0;
 for (i = 0; i < 13; i++) {
  uiDrawPathNewFigure(path, x, y);
  uiDrawPathArcTo(path,
   x, y,
   rad,
   (uiPi / 4), angle,
   0);
  angle += add;
  x += 2 * rad + step;
 }

 y += 2 * rad + step;
 x = start + rad;
 angle = 0;
 for (i = 0; i < 13; i++) {
  uiDrawPathNewFigureWithArc(path,
   x, y,
   rad,
   uiPi + (uiPi / 5), angle,
   0);
  angle += add;
  x += 2 * rad + step;
 }

 y += 2 * rad + step;
 x = start + rad;
 angle = 0;
 for (i = 0; i < 13; i++) {
  uiDrawPathNewFigure(path, x, y);
  uiDrawPathArcTo(path,
   x, y,
   rad,
   uiPi + (uiPi / 5), angle,
   0);
  angle += add;
  x += 2 * rad + step;
 }

 uiDrawPathEnd(path);

 brush.Type = uiDrawBrushTypeSolid;
 brush.R = 0;
 brush.G = 0;
 brush.B = 0;
 brush.A = 1;
 sp.Cap = uiDrawLineCapFlat;
 sp.Join = uiDrawLineJoinMiter;
 sp.Thickness = 1;
 sp.MiterLimit = uiDrawDefaultMiterLimit;
 uiDrawStroke(p->Context, path, &brush, &sp);

 uiDrawFreePath(path);
}
