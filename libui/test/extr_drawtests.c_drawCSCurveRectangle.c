
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {double Thickness; scalar_t__ DashPhase; scalar_t__ NumDashes; int * Dashes; int MiterLimit; int Join; int Cap; } ;
typedef TYPE_1__ uiDrawStrokeParams ;
typedef int uiDrawPath ;
typedef int uiDrawBrush ;
struct TYPE_6__ {int Context; } ;
typedef TYPE_2__ uiAreaDrawParams ;


 int crsourcergba (int *,double,double,int,double) ;
 int uiDrawDefaultMiterLimit ;
 int uiDrawFill (int ,int *,int *) ;
 int uiDrawFillModeWinding ;
 int uiDrawFreePath (int *) ;
 int uiDrawLineCapFlat ;
 int uiDrawLineJoinMiter ;
 int * uiDrawNewPath (int ) ;
 int uiDrawPathBezierTo (int *,double,double,double,double,double,double) ;
 int uiDrawPathCloseFigure (int *) ;
 int uiDrawPathEnd (int *) ;
 int uiDrawPathLineTo (int *,double,double) ;
 int uiDrawPathNewFigure (int *,double,double) ;
 int uiDrawStroke (int ,int *,int *,TYPE_1__*) ;

__attribute__((used)) static void drawCSCurveRectangle(uiAreaDrawParams *p)
{
 double x0 = 25.6,
  y0 = 25.6,
  rect_width = 204.8,
  rect_height = 204.8,
  radius = 102.4;

 double x1,y1;

 uiDrawBrush source;
 uiDrawStrokeParams sp;
 uiDrawPath *path;

 crsourcergba(&source, 0, 0, 0, 1);
 sp.Cap = uiDrawLineCapFlat;
 sp.Join = uiDrawLineJoinMiter;
 sp.MiterLimit = uiDrawDefaultMiterLimit;
 sp.Dashes = ((void*)0);
 sp.NumDashes = 0;
 sp.DashPhase = 0;

 path = uiDrawNewPath(uiDrawFillModeWinding);

 x1=x0+rect_width;
 y1=y0+rect_height;
 if (!rect_width || !rect_height)
  return;
 if (rect_width/2 < radius) {
  if (rect_height/2<radius) {
   uiDrawPathNewFigure(path, x0, (y0 + y1)/2);
   uiDrawPathBezierTo(path, x0 ,y0, x0, y0, (x0 + x1)/2, y0);
   uiDrawPathBezierTo(path, x1, y0, x1, y0, x1, (y0 + y1)/2);
   uiDrawPathBezierTo(path, x1, y1, x1, y1, (x1 + x0)/2, y1);
   uiDrawPathBezierTo(path, x0, y1, x0, y1, x0, (y0 + y1)/2);
  } else {
   uiDrawPathNewFigure(path, x0, y0 + radius);
   uiDrawPathBezierTo(path, x0 ,y0, x0, y0, (x0 + x1)/2, y0);
   uiDrawPathBezierTo(path, x1, y0, x1, y0, x1, y0 + radius);
   uiDrawPathLineTo(path, x1 , y1 - radius);
   uiDrawPathBezierTo(path, x1, y1, x1, y1, (x1 + x0)/2, y1);
   uiDrawPathBezierTo(path, x0, y1, x0, y1, x0, y1- radius);
  }
 } else {
  if (rect_height / 2 < radius) {
   uiDrawPathNewFigure(path, x0, (y0 + y1)/2);
   uiDrawPathBezierTo(path, x0 , y0, x0 , y0, x0 + radius, y0);
   uiDrawPathLineTo(path, x1 - radius, y0);
   uiDrawPathBezierTo(path, x1, y0, x1, y0, x1, (y0 + y1)/2);
   uiDrawPathBezierTo(path, x1, y1, x1, y1, x1 - radius, y1);
   uiDrawPathLineTo(path, x0 + radius, y1);
   uiDrawPathBezierTo(path, x0, y1, x0, y1, x0, (y0 + y1)/2);
  } else {
   uiDrawPathNewFigure(path, x0, y0 + radius);
   uiDrawPathBezierTo(path, x0 , y0, x0 , y0, x0 + radius, y0);
   uiDrawPathLineTo(path, x1 - radius, y0);
   uiDrawPathBezierTo(path, x1, y0, x1, y0, x1, y0 + radius);
   uiDrawPathLineTo(path, x1 , y1 - radius);
   uiDrawPathBezierTo(path, x1, y1, x1, y1, x1 - radius, y1);
   uiDrawPathLineTo(path, x0 + radius, y1);
   uiDrawPathBezierTo(path, x0, y1, x0, y1, x0, y1- radius);
  }
 }
 uiDrawPathCloseFigure(path);
 uiDrawPathEnd(path);

 crsourcergba(&source, 0.5, 0.5, 1, 1.0);
 uiDrawFill(p->Context, path, &source);
 crsourcergba(&source, 0.5, 0, 0, 0.5);
 sp.Thickness = 10.0;
 uiDrawStroke(p->Context, path, &source, &sp);

 uiDrawFreePath(path);
}
