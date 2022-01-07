
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {double Thickness; int MiterLimit; int Join; int Cap; scalar_t__ DashPhase; scalar_t__ NumDashes; int * Dashes; } ;
typedef TYPE_1__ uiDrawStrokeParams ;
typedef int uiDrawPath ;
typedef int uiDrawMatrix ;
struct TYPE_11__ {double Pos; double R; double G; double B; double A; } ;
typedef TYPE_2__ uiDrawBrushGradientStop ;
struct TYPE_12__ {int X0; int X1; int Y1; int NumStops; TYPE_2__* Stops; scalar_t__ Y0; int Type; } ;
typedef TYPE_3__ uiDrawBrush ;
struct TYPE_13__ {int Context; } ;
typedef TYPE_4__ uiAreaDrawParams ;


 int d2dBlack ;
 int d2dSolidBrush (TYPE_3__*,int ,double) ;
 int uiDrawBrushTypeLinearGradient ;
 int uiDrawDefaultMiterLimit ;
 int uiDrawFill (int ,int *,TYPE_3__*) ;
 int uiDrawFillModeWinding ;
 int uiDrawFreePath (int *) ;
 int uiDrawLineCapFlat ;
 int uiDrawLineJoinMiter ;
 int uiDrawMatrixSetIdentity (int *) ;
 int uiDrawMatrixTranslate (int *,int,int) ;
 int * uiDrawNewPath (int ) ;
 int uiDrawPathBezierTo (int *,int,int,int,int,int,int) ;
 int uiDrawPathCloseFigure (int *) ;
 int uiDrawPathEnd (int *) ;
 int uiDrawPathLineTo (int *,int,int) ;
 int uiDrawPathNewFigure (int *,int ,int ) ;
 int uiDrawStroke (int ,int *,TYPE_3__*,TYPE_1__*) ;
 int uiDrawTransform (int ,int *) ;

__attribute__((used)) static void drawD2DComplexShape(uiAreaDrawParams *p)
{
 uiDrawPath *path;
 uiDrawBrush black;
 uiDrawBrush gradient;
 uiDrawBrushGradientStop stops[2];
 uiDrawStrokeParams sp;
 uiDrawMatrix m;

 sp.Dashes = ((void*)0);
 sp.NumDashes = 0;
 sp.DashPhase = 0;

 path = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathNewFigure(path, 0, 0);
 uiDrawPathLineTo(path, 200, 0);
 uiDrawPathBezierTo(path,
  150, 50,
  150, 150,
  200, 200);
 uiDrawPathLineTo(path, 0, 200);
 uiDrawPathBezierTo(path,
  50, 150,
  50, 50,
  0, 0);
 uiDrawPathCloseFigure(path);
 uiDrawPathEnd(path);

 d2dSolidBrush(&black, d2dBlack, 1.0);

 stops[0].Pos =0.0;
 stops[0].R = 0.0;
 stops[0].G = 1.0;
 stops[0].B = 1.0;
 stops[0].A = 0.25;
 stops[1].Pos = 1.0;
 stops[1].R = 0.0;
 stops[1].G = 0.0;
 stops[1].B = 1.0;
 stops[1].A = 1.0;
 gradient.Type = uiDrawBrushTypeLinearGradient;
 gradient.X0 = 100;
 gradient.Y0 = 0;
 gradient.X1 = 100;
 gradient.Y1 = 200;
 gradient.Stops = stops;
 gradient.NumStops = 2;

 uiDrawMatrixSetIdentity(&m);
 uiDrawMatrixTranslate(&m, 20, 20);
 uiDrawTransform(p->Context, &m);

 sp.Thickness = 10.0;
 sp.Cap = uiDrawLineCapFlat;
 sp.Join = uiDrawLineJoinMiter;
 sp.MiterLimit = uiDrawDefaultMiterLimit;

 uiDrawStroke(p->Context, path, &black, &sp);
 uiDrawFill(p->Context, path, &gradient);

 uiDrawFreePath(path);
}
