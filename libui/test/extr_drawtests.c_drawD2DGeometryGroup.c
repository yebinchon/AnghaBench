
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {double Thickness; int MiterLimit; int Join; int Cap; scalar_t__ DashPhase; scalar_t__ NumDashes; int * Dashes; } ;
typedef TYPE_1__ uiDrawStrokeParams ;
typedef int uiDrawPath ;
typedef int uiDrawMatrix ;
typedef int uiDrawBrush ;
struct TYPE_7__ {int Context; } ;
typedef TYPE_2__ uiAreaDrawParams ;


 int d2dClear (TYPE_2__*,int ,double) ;
 int d2dCornflowerBlue ;
 int d2dForestGreen ;
 int d2dSolidBrush (int *,int ,double) ;
 int d2dWhite ;
 int uiDrawDefaultMiterLimit ;
 int uiDrawFill (int ,int *,int *) ;
 int uiDrawFillModeAlternate ;
 int uiDrawFillModeWinding ;
 int uiDrawFreePath (int *) ;
 int uiDrawLineCapFlat ;
 int uiDrawLineJoinMiter ;
 int uiDrawMatrixSetIdentity (int *) ;
 int uiDrawMatrixTranslate (int *,int,int ) ;
 int * uiDrawNewPath (int ) ;
 int uiDrawPathEnd (int *) ;
 int uiDrawPathNewFigureWithArc (int *,int,int,int,int ,int,int ) ;
 int uiDrawStroke (int ,int *,int *,TYPE_1__*) ;
 int uiDrawTransform (int ,int *) ;
 int uiPi ;

__attribute__((used)) static void drawD2DGeometryGroup(uiAreaDrawParams *p)
{
 uiDrawPath *alternate;
 uiDrawPath *winding;
 uiDrawBrush fill;
 uiDrawBrush stroke;
 uiDrawStrokeParams sp;
 uiDrawMatrix m;

 sp.Dashes = ((void*)0);
 sp.NumDashes = 0;
 sp.DashPhase = 0;

 alternate = uiDrawNewPath(uiDrawFillModeAlternate);
 uiDrawPathNewFigureWithArc(alternate,
  105, 105,
  25,
  0, 2 * uiPi,
  0);
 uiDrawPathNewFigureWithArc(alternate,
  105, 105,
  50,
  0, 2 * uiPi,
  0);
 uiDrawPathNewFigureWithArc(alternate,
  105, 105,
  75,
  0, 2 * uiPi,
  0);
 uiDrawPathNewFigureWithArc(alternate,
  105, 105,
  100,
  0, 2 * uiPi,
  0);
 uiDrawPathEnd(alternate);

 winding = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathNewFigureWithArc(winding,
  105, 105,
  25,
  0, 2 * uiPi,
  0);
 uiDrawPathNewFigureWithArc(winding,
  105, 105,
  50,
  0, 2 * uiPi,
  0);
 uiDrawPathNewFigureWithArc(winding,
  105, 105,
  75,
  0, 2 * uiPi,
  0);
 uiDrawPathNewFigureWithArc(winding,
  105, 105,
  100,
  0, 2 * uiPi,
  0);
 uiDrawPathEnd(winding);

 d2dClear(p, d2dWhite, 1.0);




 d2dSolidBrush(&fill, d2dForestGreen, 1.0);
 d2dSolidBrush(&stroke, d2dCornflowerBlue, 1.0);

 sp.Thickness = 1.0;
 sp.Cap = uiDrawLineCapFlat;
 sp.Join = uiDrawLineJoinMiter;
 sp.MiterLimit = uiDrawDefaultMiterLimit;

 uiDrawFill(p->Context, alternate, &fill);
 uiDrawStroke(p->Context, alternate, &stroke, &sp);


 uiDrawMatrixSetIdentity(&m);
 uiDrawMatrixTranslate(&m, 300, 0);
 uiDrawTransform(p->Context, &m);
 uiDrawFill(p->Context, winding, &fill);
 uiDrawStroke(p->Context, winding, &stroke, &sp);


 uiDrawFreePath(winding);
 uiDrawFreePath(alternate);
}
