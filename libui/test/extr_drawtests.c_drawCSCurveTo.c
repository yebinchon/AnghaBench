
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
 int uiDrawFillModeWinding ;
 int uiDrawFreePath (int *) ;
 int uiDrawLineCapFlat ;
 int uiDrawLineJoinMiter ;
 int * uiDrawNewPath (int ) ;
 int uiDrawPathBezierTo (int *,double,double,double,double,double,double) ;
 int uiDrawPathEnd (int *) ;
 int uiDrawPathLineTo (int *,double,double) ;
 int uiDrawPathNewFigure (int *,double,double) ;
 int uiDrawStroke (int ,int *,int *,TYPE_1__*) ;

__attribute__((used)) static void drawCSCurveTo(uiAreaDrawParams *p)
{
 double x=25.6, y=128.0;
 double x1=102.4, y1=230.4,
  x2=153.6, y2=25.6,
  x3=230.4, y3=128.0;
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

 uiDrawPathNewFigure(path, x, y);
 uiDrawPathBezierTo(path, x1, y1, x2, y2, x3, y3);
 uiDrawPathEnd(path);
 sp.Thickness = 10.0;
 uiDrawStroke(p->Context, path, &source, &sp);
 uiDrawFreePath(path);

 crsourcergba(&source, 1, 0.2, 0.2, 0.6);
 sp.Thickness = 6.0;
 path = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathNewFigure(path, x, y);
 uiDrawPathLineTo(path, x1, y1);
 uiDrawPathNewFigure(path, x2, y2);
 uiDrawPathLineTo(path, x3, y3);
 uiDrawPathEnd(path);
 uiDrawStroke(p->Context, path, &source, &sp);
 uiDrawFreePath(path);
}
