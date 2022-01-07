
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int Thickness; void* MiterLimit; void* Join; void* Cap; scalar_t__ DashPhase; scalar_t__ NumDashes; int * Dashes; } ;
typedef TYPE_1__ uiDrawStrokeParams ;
typedef int uiDrawPath ;
struct TYPE_9__ {int A; int R; double G; double B; int Type; } ;
typedef TYPE_2__ uiDrawBrush ;
struct TYPE_10__ {int ClipX; int ClipY; int ClipWidth; int ClipHeight; int Context; } ;
typedef TYPE_3__ uiAreaDrawParams ;


 int uiDrawBrushTypeSolid ;
 void* uiDrawDefaultMiterLimit ;
 int uiDrawFill (int ,int *,TYPE_2__*) ;
 int uiDrawFillModeWinding ;
 int uiDrawFreePath (int *) ;
 void* uiDrawLineCapFlat ;
 void* uiDrawLineJoinMiter ;
 void* uiDrawLineJoinRound ;
 int * uiDrawNewPath (int ) ;
 int uiDrawPathAddRectangle (int *,int,int,int,int) ;
 int uiDrawPathArcTo (int *,int,int,int,int,int,int ) ;
 int uiDrawPathBezierTo (int *,int,int,int,int,int,int) ;
 int uiDrawPathCloseFigure (int *) ;
 int uiDrawPathEnd (int *) ;
 int uiDrawPathLineTo (int *,int,int) ;
 int uiDrawPathNewFigure (int *,int,int) ;
 int uiDrawPathNewFigureWithArc (int *,int,int,int,int,int,int ) ;
 int uiDrawStroke (int ,int *,TYPE_2__*,TYPE_1__*) ;
 int uiPi ;

__attribute__((used)) static void drawOriginal(uiAreaDrawParams *p)
{
 uiDrawPath *path;
 uiDrawBrush brush;
 uiDrawStrokeParams sp;

 sp.Dashes = ((void*)0);
 sp.NumDashes = 0;
 sp.DashPhase = 0;

 brush.Type = uiDrawBrushTypeSolid;
 brush.A = 1;

 brush.R = 1;
 brush.G = 0;
 brush.B = 0;
 path = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathNewFigure(path, p->ClipX + 5, p->ClipY + 5);
 uiDrawPathLineTo(path, (p->ClipX + p->ClipWidth) - 5, (p->ClipY + p->ClipHeight) - 5);
 uiDrawPathEnd(path);
 sp.Cap = uiDrawLineCapFlat;
 sp.Join = uiDrawLineJoinMiter;
 sp.Thickness = 1;
 sp.MiterLimit = uiDrawDefaultMiterLimit;
 uiDrawStroke(p->Context, path, &brush, &sp);
 uiDrawFreePath(path);

 brush.R = 0;
 brush.G = 0;
 brush.B = 0.75;
 path = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathNewFigure(path, p->ClipX, p->ClipY);
 uiDrawPathLineTo(path, p->ClipX + p->ClipWidth, p->ClipY);
 uiDrawPathLineTo(path, 50, 150);
 uiDrawPathLineTo(path, 50, 50);
 uiDrawPathCloseFigure(path);
 uiDrawPathEnd(path);
 sp.Cap = uiDrawLineCapFlat;
 sp.Join = uiDrawLineJoinRound;
 sp.Thickness = 5;
 uiDrawStroke(p->Context, path, &brush, &sp);
 uiDrawFreePath(path);

 brush.R = 0;
 brush.G = 0.75;
 brush.B = 0;
 brush.A = 0.5;
 path = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathAddRectangle(path, 120, 80, 50, 50);
 uiDrawPathEnd(path);
 uiDrawFill(p->Context, path, &brush);
 uiDrawFreePath(path);
 brush.A = 1;

 brush.R = 0;
 brush.G = 0.5;
 brush.B = 0;
 path = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathNewFigure(path, 5.5, 10.5);
 uiDrawPathLineTo(path, 5.5, 50.5);
 uiDrawPathEnd(path);
 sp.Cap = uiDrawLineCapFlat;
 sp.Join = uiDrawLineJoinMiter;
 sp.Thickness = 1;
 sp.MiterLimit = uiDrawDefaultMiterLimit;
 uiDrawStroke(p->Context, path, &brush, &sp);
 uiDrawFreePath(path);

 brush.R = 0.5;
 brush.G = 0.75;
 brush.B = 0;
 path = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathNewFigure(path, 400, 100);
 uiDrawPathArcTo(path,
  400, 100,
  50,
  30. * (uiPi / 180.),
  300. * (uiPi / 180.),
  0);

 uiDrawPathLineTo(path, 400, 100);
 uiDrawPathNewFigureWithArc(path,
  510, 100,
  50,
  30. * (uiPi / 180.),
  300. * (uiPi / 180.),
  0);
 uiDrawPathCloseFigure(path);

 uiDrawPathNewFigure(path, 400, 210);
 uiDrawPathArcTo(path,
  400, 210,
  50,
  30. * (uiPi / 180.),
  330. * (uiPi / 180.),
  0);
 uiDrawPathLineTo(path, 400, 210);
 uiDrawPathNewFigureWithArc(path,
  510, 210,
  50,
  30. * (uiPi / 180.),
  330. * (uiPi / 180.),
  0);
 uiDrawPathCloseFigure(path);
 uiDrawPathEnd(path);
 sp.Cap = uiDrawLineCapFlat;
 sp.Join = uiDrawLineJoinMiter;
 sp.Thickness = 1;
 sp.MiterLimit = uiDrawDefaultMiterLimit;
 uiDrawStroke(p->Context, path, &brush, &sp);
 uiDrawFreePath(path);

 brush.R = 0;
 brush.G = 0.5;
 brush.B = 0.75;
 path = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathNewFigure(path, 300, 300);
 uiDrawPathBezierTo(path,
  350, 320,
  310, 390,
  435, 372);
 uiDrawPathEnd(path);
 sp.Cap = uiDrawLineCapFlat;
 sp.Join = uiDrawLineJoinMiter;
 sp.Thickness = 1;
 sp.MiterLimit = uiDrawDefaultMiterLimit;
 uiDrawStroke(p->Context, path, &brush, &sp);
 uiDrawFreePath(path);
}
