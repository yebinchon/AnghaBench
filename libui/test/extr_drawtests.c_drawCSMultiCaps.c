
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {double Thickness; int Cap; scalar_t__ DashPhase; scalar_t__ NumDashes; int * Dashes; int MiterLimit; int Join; } ;
typedef TYPE_1__ uiDrawStrokeParams ;
typedef int uiDrawPath ;
typedef int uiDrawBrush ;
struct TYPE_6__ {int Context; } ;
typedef TYPE_2__ uiAreaDrawParams ;


 int crsourcergba (int *,int ,int ,int ,int) ;
 int uiDrawDefaultMiterLimit ;
 int uiDrawFillModeWinding ;
 int uiDrawFreePath (int *) ;
 int uiDrawLineCapRound ;
 int uiDrawLineJoinMiter ;
 int * uiDrawNewPath (int ) ;
 int uiDrawPathEnd (int *) ;
 int uiDrawPathLineTo (int *,double,double) ;
 int uiDrawPathNewFigure (int *,double,double) ;
 int uiDrawStroke (int ,int *,int *,TYPE_1__*) ;

__attribute__((used)) static void drawCSMultiCaps(uiAreaDrawParams *p)
{
 uiDrawBrush source;
 uiDrawStrokeParams sp;
 uiDrawPath *path;

 crsourcergba(&source, 0, 0, 0, 1);
 sp.Join = uiDrawLineJoinMiter;
 sp.MiterLimit = uiDrawDefaultMiterLimit;
 sp.Dashes = ((void*)0);
 sp.NumDashes = 0;
 sp.DashPhase = 0;

 path = uiDrawNewPath(uiDrawFillModeWinding);

 uiDrawPathNewFigure(path, 50.0, 75.0);
 uiDrawPathLineTo(path, 200.0, 75.0);

 uiDrawPathNewFigure(path, 50.0, 125.0);
 uiDrawPathLineTo(path, 200.0, 125.0);

 uiDrawPathNewFigure(path, 50.0, 175.0);
 uiDrawPathLineTo(path, 200.0, 175.0);
 uiDrawPathEnd(path);

 sp.Thickness = 30.0;
 sp.Cap = uiDrawLineCapRound;
 uiDrawStroke(p->Context, path, &source, &sp);
 uiDrawFreePath(path);
}
