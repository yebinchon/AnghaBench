
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


 int crsourcergba (int *,int ,int,int ,int) ;
 int uiDrawClip (int ,int *) ;
 int uiDrawDefaultMiterLimit ;
 int uiDrawFill (int ,int *,int *) ;
 int uiDrawFillModeWinding ;
 int uiDrawFreePath (int *) ;
 int uiDrawLineCapFlat ;
 int uiDrawLineJoinMiter ;
 int * uiDrawNewPath (int ) ;
 int uiDrawPathAddRectangle (int *,int ,int ,int,int) ;
 int uiDrawPathEnd (int *) ;
 int uiDrawPathLineTo (int *,int,int) ;
 int uiDrawPathNewFigure (int *,int,int ) ;
 int uiDrawPathNewFigureWithArc (int *,double,double,double,int ,int,int ) ;
 int uiDrawStroke (int ,int *,int *,TYPE_1__*) ;
 int uiPi ;

__attribute__((used)) static void drawCSClip(uiAreaDrawParams *p)
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

 uiDrawPathNewFigureWithArc(path,
  128.0, 128.0,
  76.8,
  0, 2 * uiPi,
  0);
 uiDrawPathEnd(path);
 uiDrawClip(p->Context, path);
 uiDrawFreePath(path);

 path = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathAddRectangle(path, 0, 0, 256, 256);
 uiDrawPathEnd(path);
 uiDrawFill(p->Context, path, &source);
 uiDrawFreePath(path);

 crsourcergba(&source, 0, 1, 0, 1);
 path = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathNewFigure(path, 0, 0);
 uiDrawPathLineTo(path, 256, 256);
 uiDrawPathNewFigure(path, 256, 0);
 uiDrawPathLineTo(path, 0, 256);
 uiDrawPathEnd(path);
 sp.Thickness = 10.0;
 uiDrawStroke(p->Context, path, &source, &sp);
 uiDrawFreePath(path);
}
