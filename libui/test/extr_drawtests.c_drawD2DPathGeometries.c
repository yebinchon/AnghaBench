
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {double Thickness; int MiterLimit; int Join; int Cap; scalar_t__ DashPhase; scalar_t__ NumDashes; int * Dashes; } ;
typedef TYPE_1__ uiDrawStrokeParams ;
typedef int uiDrawPath ;
struct TYPE_12__ {double Pos; double A; int B; int G; int R; } ;
typedef TYPE_2__ uiDrawBrushGradientStop ;
struct TYPE_13__ {int X0; int Y0; int X1; int Y1; int OuterRadius; int NumStops; TYPE_2__* Stops; int Type; } ;
typedef TYPE_3__ uiDrawBrush ;
struct TYPE_14__ {int Context; } ;
typedef TYPE_4__ uiAreaDrawParams ;


 int d2dBlack ;
 int d2dClear (TYPE_4__*,int ,double) ;
 int d2dColorToRGB (int ,int *,int *,int *) ;
 int d2dForestGreen ;
 int d2dLightSkyBlue ;
 int d2dOliveDrab ;
 int d2dSolidBrush (TYPE_3__*,int ,double) ;
 int d2dWhite ;
 int d2dYellow ;
 int d2dYellowGreen ;
 int uiDrawBrushTypeRadialGradient ;
 int uiDrawDefaultMiterLimit ;
 int uiDrawFill (int ,int *,TYPE_3__*) ;
 int uiDrawFillModeWinding ;
 int uiDrawFreePath (int *) ;
 int uiDrawLineCapFlat ;
 int uiDrawLineJoinMiter ;
 int * uiDrawNewPath (int ) ;
 int uiDrawPathBezierTo (int *,int,int,int,int,int,int) ;
 int uiDrawPathCloseFigure (int *) ;
 int uiDrawPathEnd (int *) ;
 int uiDrawPathLineTo (int *,int,int) ;
 int uiDrawPathNewFigure (int *,int,int) ;
 int uiDrawPathNewFigureWithArc (int *,double,int,int,int ,int ,int ) ;
 int uiDrawStroke (int ,int *,TYPE_3__*,TYPE_1__*) ;
 int uiPi ;

__attribute__((used)) static void drawD2DPathGeometries(uiAreaDrawParams *p)
{
 uiDrawPath *leftMountain;
 uiDrawPath *rightMountain;
 uiDrawPath *sun;
 uiDrawPath *sunRays;
 uiDrawPath *river;
 uiDrawBrush radial;
 uiDrawBrush scene;
 uiDrawStrokeParams sp;
 uiDrawBrushGradientStop stops[2];

 sp.Dashes = ((void*)0);
 sp.NumDashes = 0;
 sp.DashPhase = 0;


 radial.Type = uiDrawBrushTypeRadialGradient;
 radial.X0 = 75;
 radial.Y0 = 75;
 radial.X1 = 75;
 radial.Y1 = 75;
 radial.OuterRadius = 75;
 stops[0].Pos = 0.0;
 d2dColorToRGB(d2dYellow, &(stops[0].R), &(stops[0].G), &(stops[0].B));
 stops[0].A = 1.0;
 stops[1].Pos = 1.0;
 d2dColorToRGB(d2dForestGreen, &(stops[1].R), &(stops[1].G), &(stops[1].B));
 stops[1].A = 1.0;
 radial.Stops = stops;
 radial.NumStops = 2;

 leftMountain = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathNewFigure(leftMountain, 346, 255);
 uiDrawPathLineTo(leftMountain, 267, 177);
 uiDrawPathLineTo(leftMountain, 236, 192);
 uiDrawPathLineTo(leftMountain, 212, 160);
 uiDrawPathLineTo(leftMountain, 156, 255);
 uiDrawPathLineTo(leftMountain, 346, 255);
 uiDrawPathCloseFigure(leftMountain);
 uiDrawPathEnd(leftMountain);

 rightMountain = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathNewFigure(rightMountain, 575, 263);
 uiDrawPathLineTo(rightMountain, 481, 146);
 uiDrawPathLineTo(rightMountain, 449, 181);
 uiDrawPathLineTo(rightMountain, 433, 159);
 uiDrawPathLineTo(rightMountain, 401, 214);
 uiDrawPathLineTo(rightMountain, 381, 199);
 uiDrawPathLineTo(rightMountain, 323, 263);
 uiDrawPathLineTo(rightMountain, 575, 263);
 uiDrawPathCloseFigure(rightMountain);
 uiDrawPathEnd(rightMountain);

 sun = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathNewFigureWithArc(sun,
  (440.0 - 270.0) / 2 + 270.0, 255,
  85,
  uiPi, uiPi,
  0);
 uiDrawPathCloseFigure(sun);
 uiDrawPathEnd(sun);



 sunRays = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathNewFigure(sunRays, 299, 182);
 uiDrawPathBezierTo(sunRays,
  299, 182,
  294, 176,
  285, 178);
 uiDrawPathBezierTo(sunRays,
  276, 179,
  272, 173,
  272, 173);
 uiDrawPathNewFigure(sunRays, 354, 156);
 uiDrawPathBezierTo(sunRays,
  354, 156,
  358, 149,
  354, 142);
 uiDrawPathBezierTo(sunRays,
  349, 134,
  354, 127,
  354, 127);
 uiDrawPathNewFigure(sunRays, 322, 164);
 uiDrawPathBezierTo(sunRays,
  322, 164,
  322, 156,
  314, 152);
 uiDrawPathBezierTo(sunRays,
  306, 149,
  305, 141,
  305, 141);
 uiDrawPathNewFigure(sunRays, 385, 164);
 uiDrawPathBezierTo(sunRays,
  385, 164,
  392, 161,
  394, 152);
 uiDrawPathBezierTo(sunRays,
  395, 144,
  402, 141,
  402, 142);
 uiDrawPathNewFigure(sunRays, 408, 182);
 uiDrawPathBezierTo(sunRays,
  408, 182,
  416, 184,
  422, 178);
 uiDrawPathBezierTo(sunRays,
  428, 171,
  435, 173,
  435, 173);
 uiDrawPathEnd(sunRays);

 river = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathNewFigure(river, 183, 392);
 uiDrawPathBezierTo(river,
  238, 284,
  472, 345,
  356, 303);
 uiDrawPathBezierTo(river,
  237, 261,
  333, 256,
  333, 256);
 uiDrawPathBezierTo(river,
  335, 257,
  241, 261,
  411, 306);
 uiDrawPathBezierTo(river,
  574, 350,
  288, 324,
  296, 392);
 uiDrawPathEnd(river);

 d2dClear(p, d2dWhite, 1.0);



 uiDrawFill(p->Context, sun, &radial);

 d2dSolidBrush(&scene, d2dBlack, 1.0);
 sp.Thickness = 1.0;
 sp.Cap = uiDrawLineCapFlat;
 sp.Join = uiDrawLineJoinMiter;
 sp.MiterLimit = uiDrawDefaultMiterLimit;
 uiDrawStroke(p->Context, sun, &scene, &sp);
 uiDrawStroke(p->Context, sunRays, &scene, &sp);

 d2dSolidBrush(&scene, d2dOliveDrab, 1.0);
 uiDrawFill(p->Context, leftMountain, &scene);

 d2dSolidBrush(&scene, d2dBlack, 1.0);
 uiDrawStroke(p->Context, leftMountain, &scene, &sp);

 d2dSolidBrush(&scene, d2dLightSkyBlue, 1.0);
 uiDrawFill(p->Context, river, &scene);

 d2dSolidBrush(&scene, d2dBlack, 1.0);
 uiDrawStroke(p->Context, river, &scene, &sp);

 d2dSolidBrush(&scene, d2dYellowGreen, 1.0);
 uiDrawFill(p->Context, rightMountain, &scene);

 d2dSolidBrush(&scene, d2dBlack, 1.0);
 uiDrawStroke(p->Context, rightMountain, &scene, &sp);

 uiDrawFreePath(leftMountain);
 uiDrawFreePath(rightMountain);
 uiDrawFreePath(sun);
 uiDrawFreePath(sunRays);
 uiDrawFreePath(river);
}
