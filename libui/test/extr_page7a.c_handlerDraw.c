
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {double Thickness; scalar_t__ DashPhase; scalar_t__ NumDashes; int * Dashes; int MiterLimit; int Join; int Cap; } ;
typedef TYPE_1__ uiDrawStrokeParams ;
typedef int uiDrawPath ;
struct TYPE_8__ {int A; scalar_t__ B; scalar_t__ G; scalar_t__ R; int Type; } ;
typedef TYPE_2__ uiDrawBrush ;
typedef int uiAreaHandler ;
struct TYPE_9__ {int Context; } ;
typedef TYPE_3__ uiAreaDrawParams ;
typedef int uiArea ;


 double atof (char*) ;
 int negative ;
 int radians ;
 int startAngle ;
 int sweep ;
 scalar_t__ uiCheckboxChecked (int ) ;
 int uiDrawBrushTypeSolid ;
 int uiDrawDefaultMiterLimit ;
 int uiDrawFillModeWinding ;
 int uiDrawFreePath (int *) ;
 int uiDrawLineCapFlat ;
 int uiDrawLineJoinMiter ;
 int * uiDrawNewPath (int ) ;
 int uiDrawPathArcTo (int *,double,double,double,double,double,scalar_t__) ;
 int uiDrawPathEnd (int *) ;
 int uiDrawPathNewFigure (int *,double,double) ;
 int uiDrawStroke (int ,int *,TYPE_2__*,TYPE_1__*) ;
 char* uiEntryText (int ) ;
 int uiFreeText (char*) ;
 int uiPi ;

__attribute__((used)) static void handlerDraw(uiAreaHandler *a, uiArea *area, uiAreaDrawParams *p)
{
 double xc = 128.0;
 double yc = 128.0;
 double radius = 100.0;
 uiDrawBrush source;
 uiDrawStrokeParams sp;
 uiDrawPath *path;
 char *startText;
 char *sweepText;
 double factor;

 source.Type = uiDrawBrushTypeSolid;
 source.R = 0;
 source.G = 0;
 source.B = 0;
 source.A = 1;
 sp.Cap = uiDrawLineCapFlat;
 sp.Join = uiDrawLineJoinMiter;
 sp.MiterLimit = uiDrawDefaultMiterLimit;
 sp.Dashes = ((void*)0);
 sp.NumDashes = 0;
 sp.DashPhase = 0;

 startText = uiEntryText(startAngle);
 sweepText = uiEntryText(sweep);

 factor = uiPi / 180;
 if (uiCheckboxChecked(radians))
  factor = 1;

 sp.Thickness = 10.0;
 path = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathNewFigure(path, xc, yc);
 uiDrawPathArcTo(path,
  xc, yc,
  radius,
  atof(startText) * factor,
  atof(sweepText) * factor,
  uiCheckboxChecked(negative));
 uiDrawPathEnd(path);
 uiDrawStroke(p->Context, path, &source, &sp);
 uiDrawFreePath(path);

 uiFreeText(startText);
 uiFreeText(sweepText);
}
