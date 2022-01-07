
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {double Thickness; void* Cap; scalar_t__ DashPhase; scalar_t__ NumDashes; int * Dashes; int MiterLimit; int Join; } ;
typedef TYPE_1__ uiDrawStrokeParams ;
typedef int uiDrawPath ;
typedef int uiDrawBrush ;
struct TYPE_6__ {int Context; } ;
typedef TYPE_2__ uiAreaDrawParams ;


 int crsourcergba (int *,int,double,double,int) ;
 int uiDrawDefaultMiterLimit ;
 int uiDrawFillModeWinding ;
 int uiDrawFreePath (int *) ;
 void* uiDrawLineCapFlat ;
 void* uiDrawLineCapRound ;
 void* uiDrawLineCapSquare ;
 int uiDrawLineJoinMiter ;
 int * uiDrawNewPath (int ) ;
 int uiDrawPathEnd (int *) ;
 int uiDrawPathLineTo (int *,double,double) ;
 int uiDrawPathNewFigure (int *,double,double) ;
 int uiDrawStroke (int ,int *,int *,TYPE_1__*) ;

__attribute__((used)) static void drawCSSetLineCap(uiAreaDrawParams *p)
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

 sp.Thickness = 30.0;

 sp.Cap = uiDrawLineCapFlat;
 path = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathNewFigure(path, 64.0, 50.0);
 uiDrawPathLineTo(path, 64.0, 200.0);
 uiDrawPathEnd(path);
 uiDrawStroke(p->Context, path, &source, &sp);
 uiDrawFreePath(path);

 sp.Cap = uiDrawLineCapRound;
 path = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathNewFigure(path, 128.0, 50.0);
 uiDrawPathLineTo(path, 128.0, 200.0);
 uiDrawPathEnd(path);
 uiDrawStroke(p->Context, path, &source, &sp);
 uiDrawFreePath(path);

 sp.Cap = uiDrawLineCapSquare;
 path = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathNewFigure(path, 192.0, 50.0);
 uiDrawPathLineTo(path, 192.0, 200.0);
 uiDrawPathEnd(path);
 uiDrawStroke(p->Context, path, &source, &sp);
 uiDrawFreePath(path);



 crsourcergba(&source, 1, 0.2, 0.2, 1);
 sp.Thickness = 2.56;
 path = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathNewFigure(path, 64.0, 50.0);
 uiDrawPathLineTo(path, 64.0, 200.0);
 uiDrawPathNewFigure(path, 128.0, 50.0);
 uiDrawPathLineTo(path, 128.0, 200.0);
 uiDrawPathNewFigure(path, 192.0, 50.0);
 uiDrawPathLineTo(path, 192.0, 200.0);
 uiDrawPathEnd(path);
 uiDrawStroke(p->Context, path, &source, &sp);
 uiDrawFreePath(path);
}
