
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {double Thickness; int MiterLimit; int Join; int Cap; scalar_t__ DashPhase; scalar_t__ NumDashes; int * Dashes; } ;
typedef TYPE_1__ uiDrawStrokeParams ;
typedef int uiDrawPath ;
typedef int uiDrawBrush ;
struct TYPE_7__ {int AreaWidth; int AreaHeight; int Context; } ;
typedef TYPE_2__ uiAreaDrawParams ;


 int d2dClear (TYPE_2__*,int ,double) ;
 int d2dCornflowerBlue ;
 int d2dLightSlateGray ;
 int d2dSolidBrush (int *,int ,double) ;
 int d2dWhite ;
 int uiDrawDefaultMiterLimit ;
 int uiDrawFill (int ,int *,int *) ;
 int uiDrawFillModeWinding ;
 int uiDrawFreePath (int *) ;
 int uiDrawLineCapFlat ;
 int uiDrawLineJoinMiter ;
 int * uiDrawNewPath (int ) ;
 int uiDrawPathAddRectangle (int *,double,double,double,double) ;
 int uiDrawPathEnd (int *) ;
 int uiDrawPathLineTo (int *,int,int) ;
 int uiDrawPathNewFigure (int *,int,int) ;
 int uiDrawStroke (int ,int *,int *,TYPE_1__*) ;

__attribute__((used)) static void drawD2DSimpleApp(uiAreaDrawParams *p)
{
 uiDrawPath *path;
 uiDrawBrush lightSlateGray;
 uiDrawBrush cornflowerBlue;
 uiDrawStrokeParams sp;
 int x, y;

 sp.Dashes = ((void*)0);
 sp.NumDashes = 0;
 sp.DashPhase = 0;

 d2dSolidBrush(&lightSlateGray, d2dLightSlateGray, 1.0);
 d2dSolidBrush(&cornflowerBlue, d2dCornflowerBlue, 1.0);

 d2dClear(p, d2dWhite, 1.0);

 sp.Thickness = 0.5;
 sp.Cap = uiDrawLineCapFlat;
 sp.Join = uiDrawLineJoinMiter;
 sp.MiterLimit = uiDrawDefaultMiterLimit;

 for (x = 0; x < p->AreaWidth; x += 10) {
  path = uiDrawNewPath(uiDrawFillModeWinding);
  uiDrawPathNewFigure(path, x, 0);
  uiDrawPathLineTo(path, x, p->AreaHeight);
  uiDrawPathEnd(path);
  uiDrawStroke(p->Context, path, &lightSlateGray, &sp);
  uiDrawFreePath(path);
 }

 for (y = 0; y < p->AreaHeight; y += 10) {
  path = uiDrawNewPath(uiDrawFillModeWinding);
  uiDrawPathNewFigure(path, 0, y);
  uiDrawPathLineTo(path, p->AreaWidth, y);
  uiDrawPathEnd(path);
  uiDrawStroke(p->Context, path, &lightSlateGray, &sp);
  uiDrawFreePath(path);
 }

 double left, top, right, bottom;

 left = p->AreaWidth / 2.0 - 50.0;
 right = p->AreaWidth / 2.0 + 50.0;
 top = p->AreaHeight / 2.0 - 50.0;
 bottom = p->AreaHeight / 2.0 + 50.0;
 path = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathAddRectangle(path, left, top, right - left, bottom - top);
 uiDrawPathEnd(path);
 uiDrawFill(p->Context, path, &lightSlateGray);
 uiDrawFreePath(path);

 left = p->AreaWidth / 2.0 - 100.0;
 right = p->AreaWidth / 2.0 + 100.0;
 top = p->AreaHeight / 2.0 - 100.0;
 bottom = p->AreaHeight / 2.0 + 100.0;
 path = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathAddRectangle(path, left, top, right - left, bottom - top);
 uiDrawPathEnd(path);
 sp.Thickness = 1.0;
 uiDrawStroke(p->Context, path, &cornflowerBlue, &sp);
 uiDrawFreePath(path);
}
