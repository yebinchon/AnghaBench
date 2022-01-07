
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


 int crsourcergba (int *,int,double,double,double) ;
 int uiDrawDefaultMiterLimit ;
 int uiDrawFill (int ,int *,int *) ;
 int uiDrawFillModeWinding ;
 int uiDrawFreePath (int *) ;
 int uiDrawLineCapFlat ;
 int uiDrawLineJoinMiter ;
 int * uiDrawNewPath (int ) ;
 int uiDrawPathEnd (int *) ;
 int uiDrawPathLineTo (int *,double,double) ;
 int uiDrawPathNewFigureWithArc (int *,double,double,double,double,int,int) ;
 int uiDrawStroke (int ,int *,int *,TYPE_1__*) ;
 double uiPi ;

__attribute__((used)) static void drawCSArcNegative(uiAreaDrawParams *p)
{
 double xc = 128.0;
 double yc = 128.0;
 double radius = 100.0;
 double angle1 = 45.0 * (uiPi / 180.0);
 double angle2 = 180.0 * (uiPi / 180.0);
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

 sp.Thickness = 10.0;
 path = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathNewFigureWithArc(path,
  xc, yc,
  radius,
  angle1,
  angle2 - angle1,
  1);
 uiDrawPathEnd(path);
 uiDrawStroke(p->Context, path, &source, &sp);
 uiDrawFreePath(path);

 crsourcergba(&source, 1, 0.2, 0.2, 0.6);
 sp.Thickness = 6.0;

 path = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathNewFigureWithArc(path,
  xc, yc,
  10.0,
  0, 2 * uiPi,
  0);
 uiDrawPathEnd(path);
 uiDrawFill(p->Context, path, &source);
 uiDrawFreePath(path);

 path = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathNewFigureWithArc(path,
  xc, yc,
  radius,
  angle1, 0,
  0);
 uiDrawPathLineTo(path, xc, yc);
 uiDrawPathNewFigureWithArc(path,
  xc, yc,
  radius,
  angle2, 0,
  0);
 uiDrawPathLineTo(path, xc, yc);
 uiDrawPathEnd(path);
 uiDrawStroke(p->Context, path, &source, &sp);
 uiDrawFreePath(path);
}
