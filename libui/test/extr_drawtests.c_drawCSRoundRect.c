
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
 int uiDrawPathArcTo (int *,double,double,double,int,double,int ) ;
 int uiDrawPathCloseFigure (int *) ;
 int uiDrawPathEnd (int *) ;
 int uiDrawPathNewFigureWithArc (int *,double,double,double,int,double,int ) ;
 int uiDrawStroke (int ,int *,int *,TYPE_1__*) ;
 double uiPi ;

__attribute__((used)) static void drawCSRoundRect(uiAreaDrawParams *p)
{
 double x = 25.6,
  y = 25.6,
  width = 204.8,
  height = 204.8,
  aspect = 1.0,
  corner_radius = height / 10.0;

 double radius = corner_radius / aspect;
 double degrees = uiPi / 180.0;

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


 uiDrawPathNewFigureWithArc(path,
  x + width - radius, y + radius,
  radius,
  -90 * degrees, uiPi / 2,
  0);

 uiDrawPathArcTo(path,
  x + width - radius, y + height - radius,
  radius,
  0 * degrees, uiPi / 2,
  0);

 uiDrawPathArcTo(path,
  x + radius, y + height - radius,
  radius,
  90 * degrees, uiPi / 2,
  0);

 uiDrawPathArcTo(path,
  x + radius, y + radius,
  radius,
  180 * degrees, uiPi / 2,
  0);
 uiDrawPathCloseFigure(path);
 uiDrawPathEnd(path);

 crsourcergba(&source, 0.5, 0.5, 1, 1);
 uiDrawFill(p->Context, path, &source);
 crsourcergba(&source, 0.5, 0, 0, 0.5);
 sp.Thickness = 10.0;
 uiDrawStroke(p->Context, path, &source, &sp);
 uiDrawFreePath(path);
}
