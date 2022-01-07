
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


 int crsourcergba (int *,int ,int ,int,int) ;
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

__attribute__((used)) static void drawCSFillAndStroke2(uiAreaDrawParams *p)
{
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

 uiDrawPathNewFigure(path, 128.0, 25.6);
 uiDrawPathLineTo(path, 230.4, 230.4);
 uiDrawPathLineTo(path, 230.4 - 102.4, 230.4 + 0.0);
 uiDrawPathBezierTo(path, 51.2, 230.4, 51.2, 128.0, 128.0, 128.0);
 uiDrawPathCloseFigure(path);

 uiDrawPathNewFigure(path, 64.0, 25.6);
 uiDrawPathLineTo(path, 64.0 + 51.2, 25.6 + 51.2);
 uiDrawPathLineTo(path, 64.0 + 51.2 -51.2, 25.6 + 51.2 + 51.2);
 uiDrawPathLineTo(path, 64.0 + 51.2 -51.2 -51.2, 25.6 + 51.2 + 51.2 -51.2);
 uiDrawPathCloseFigure(path);

 uiDrawPathEnd(path);

 sp.Thickness = 10.0;
 crsourcergba(&source, 0, 0, 1, 1);
 uiDrawFill(p->Context, path, &source);
 crsourcergba(&source, 0, 0, 0, 1);
 uiDrawStroke(p->Context, path, &source, &sp);
 uiDrawFreePath(path);
}
