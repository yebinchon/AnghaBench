
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
struct TYPE_11__ {double Pos; double A; int B; int G; int R; } ;
typedef TYPE_2__ uiDrawBrushGradientStop ;
struct TYPE_12__ {int X1; int Y1; int NumStops; TYPE_2__* Stops; scalar_t__ Y0; scalar_t__ X0; int Type; } ;
typedef TYPE_3__ uiDrawBrush ;
struct TYPE_13__ {int Context; } ;
typedef TYPE_4__ uiAreaDrawParams ;


 int d2dBlack ;
 int d2dColorToRGB (int ,int *,int *,int *) ;
 int d2dForestGreen ;
 int d2dSolidBrush (TYPE_3__*,int ,double) ;
 int d2dYellow ;
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
 int uiDrawPathAddRectangle (int *,int ,int ,int,int) ;
 int uiDrawPathEnd (int *) ;
 int uiDrawStroke (int ,int *,TYPE_3__*,TYPE_1__*) ;
 int uiDrawTransform (int ,int *) ;

__attribute__((used)) static void drawD2DLinearBrush(uiAreaDrawParams *p)
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


 uiDrawMatrixSetIdentity(&m);
 uiDrawMatrixTranslate(&m, 25, 25);
 uiDrawTransform(p->Context, &m);

 gradient.Type = uiDrawBrushTypeLinearGradient;
 gradient.X0 = 0;
 gradient.Y0 = 0;
 gradient.X1 = 150;
 gradient.Y1 = 150;
 stops[0].Pos = 0.0;
 d2dColorToRGB(d2dYellow, &(stops[0].R), &(stops[0].G), &(stops[0].B));
 stops[0].A = 1.0;
 stops[1].Pos = 1.0;
 d2dColorToRGB(d2dForestGreen, &(stops[1].R), &(stops[1].G), &(stops[1].B));
 stops[1].A = 1.0;
 gradient.Stops = stops;
 gradient.NumStops = 2;

 d2dSolidBrush(&black, d2dBlack, 1.0);

 path = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathAddRectangle(path, 0, 0, 150, 150);
 uiDrawPathEnd(path);

 uiDrawFill(p->Context, path, &gradient);
 sp.Thickness = 1.0;
 sp.Cap = uiDrawLineCapFlat;
 sp.Join = uiDrawLineJoinMiter;
 sp.MiterLimit = uiDrawDefaultMiterLimit;
 uiDrawStroke(p->Context, path, &black, &sp);

 uiDrawFreePath(path);
}
