
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Thickness; scalar_t__ DashPhase; scalar_t__ NumDashes; int * Dashes; int MiterLimit; int Join; int Cap; } ;
typedef TYPE_1__ uiDrawStrokeParams ;
typedef int uiDrawPath ;
typedef int uiDrawMatrix ;
typedef int uiDrawBrush ;
struct TYPE_6__ {int Context; } ;
typedef TYPE_2__ uiAreaDrawParams ;


 int crsourcergba (int *,int ,double,double,int) ;
 int uiDrawDefaultMiterLimit ;
 int uiDrawFill (int ,int *,int *) ;
 int uiDrawFillModeAlternate ;
 int uiDrawFillModeWinding ;
 int uiDrawFreePath (int *) ;
 int uiDrawLineCapFlat ;
 int uiDrawLineJoinMiter ;
 int uiDrawMatrixSetIdentity (int *) ;
 int uiDrawMatrixTranslate (int *,int ,int) ;
 int * uiDrawNewPath (int ) ;
 int uiDrawPathAddRectangle (int *,int,int,int,int) ;
 int uiDrawPathEnd (int *) ;
 int uiDrawPathNewFigureWithArc (int *,int,int,int,int ,int,int) ;
 int uiDrawStroke (int ,int *,int *,TYPE_1__*) ;
 int uiDrawTransform (int ,int *) ;
 int uiPi ;

__attribute__((used)) static void drawCSFillStyle(uiAreaDrawParams *p)
{
 uiDrawBrush source;
 uiDrawStrokeParams sp;
 uiDrawPath *path;
 uiDrawMatrix m;

 crsourcergba(&source, 0, 0, 0, 1);
 sp.Cap = uiDrawLineCapFlat;
 sp.Join = uiDrawLineJoinMiter;
 sp.MiterLimit = uiDrawDefaultMiterLimit;
 sp.Dashes = ((void*)0);
 sp.NumDashes = 0;
 sp.DashPhase = 0;

 sp.Thickness = 6;

 path = uiDrawNewPath(uiDrawFillModeAlternate);
 uiDrawPathAddRectangle(path, 12, 12, 232, 70);
 uiDrawPathNewFigureWithArc(path,
  64, 64,
  40,
  0, 2*uiPi,
  0);
 uiDrawPathNewFigureWithArc(path,
  192, 64,
  40,
  0, -2*uiPi,
  1);
 uiDrawPathEnd(path);

 crsourcergba(&source, 0, 0.7, 0, 1);
 uiDrawFill(p->Context, path, &source);
 crsourcergba(&source, 0, 0, 0, 1);
 uiDrawStroke(p->Context, path, &source, &sp);
 uiDrawFreePath(path);

 uiDrawMatrixSetIdentity(&m);
 uiDrawMatrixTranslate(&m, 0, 128);
 uiDrawTransform(p->Context, &m);

 path = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathAddRectangle(path, 12, 12, 232, 70);
 uiDrawPathNewFigureWithArc(path,
  64, 64,
  40,
  0, 2*uiPi,
  0);
 uiDrawPathNewFigureWithArc(path,
  192, 64,
  40,
  0, -2*uiPi,
  1);
 uiDrawPathEnd(path);

 crsourcergba(&source, 0, 0, 0.9, 1);
 uiDrawFill(p->Context, path, &source);
 crsourcergba(&source, 0, 0, 0, 1);
 uiDrawStroke(p->Context, path, &source, &sp);
 uiDrawFreePath(path);
}
