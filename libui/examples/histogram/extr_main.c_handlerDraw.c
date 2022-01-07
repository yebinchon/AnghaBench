
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int Thickness; int MiterLimit; int Join; int Cap; } ;
typedef TYPE_1__ uiDrawStrokeParams ;
typedef int uiDrawPath ;
typedef int uiDrawMatrix ;
struct TYPE_11__ {double R; double G; double B; double A; int Type; } ;
typedef TYPE_2__ uiDrawBrush ;
typedef int uiAreaHandler ;
struct TYPE_12__ {int Context; int AreaHeight; int AreaWidth; } ;
typedef TYPE_3__ uiAreaDrawParams ;
typedef int uiArea ;


 int colorBlack ;
 int colorButton ;
 int colorWhite ;
 int * constructGraph (double,double,int) ;
 int currentPoint ;
 int graphSize (int ,int ,double*,double*) ;
 int memset (TYPE_1__*,int ,int) ;
 int pointLocations (double,double,double*,double*) ;
 int pointRadius ;
 int setSolidBrush (TYPE_2__*,int ,double) ;
 int uiColorButtonColor (int ,double*,double*,double*,double*) ;
 int uiDrawBrushTypeSolid ;
 int uiDrawDefaultMiterLimit ;
 int uiDrawFill (int ,int *,TYPE_2__*) ;
 int uiDrawFillModeWinding ;
 int uiDrawFreePath (int *) ;
 int uiDrawLineCapFlat ;
 int uiDrawLineJoinMiter ;
 int uiDrawMatrixSetIdentity (int *) ;
 int uiDrawMatrixTranslate (int *,scalar_t__,scalar_t__) ;
 int * uiDrawNewPath (int ) ;
 int uiDrawPathAddRectangle (int *,int ,int ,int ,int ) ;
 int uiDrawPathEnd (int *) ;
 int uiDrawPathLineTo (int *,scalar_t__,scalar_t__) ;
 int uiDrawPathNewFigure (int *,scalar_t__,scalar_t__) ;
 int uiDrawPathNewFigureWithArc (int *,double,double,int ,int ,double,int ) ;
 int uiDrawStroke (int ,int *,TYPE_2__*,TYPE_1__*) ;
 int uiDrawTransform (int ,int *) ;
 scalar_t__ xoffLeft ;
 scalar_t__ yoffTop ;

__attribute__((used)) static void handlerDraw(uiAreaHandler *a, uiArea *area, uiAreaDrawParams *p)
{
 uiDrawPath *path;
 uiDrawBrush brush;
 uiDrawStrokeParams sp;
 uiDrawMatrix m;
 double graphWidth, graphHeight;
 double graphR, graphG, graphB, graphA;


 setSolidBrush(&brush, colorWhite, 1.0);
 path = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathAddRectangle(path, 0, 0, p->AreaWidth, p->AreaHeight);
 uiDrawPathEnd(path);
 uiDrawFill(p->Context, path, &brush);
 uiDrawFreePath(path);


 graphSize(p->AreaWidth, p->AreaHeight, &graphWidth, &graphHeight);



 memset(&sp, 0, sizeof (uiDrawStrokeParams));


 sp.Cap = uiDrawLineCapFlat;
 sp.Join = uiDrawLineJoinMiter;
 sp.Thickness = 2;
 sp.MiterLimit = uiDrawDefaultMiterLimit;


 setSolidBrush(&brush, colorBlack, 1.0);
 path = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathNewFigure(path,
  xoffLeft, yoffTop);
 uiDrawPathLineTo(path,
  xoffLeft, yoffTop + graphHeight);
 uiDrawPathLineTo(path,
  xoffLeft + graphWidth, yoffTop + graphHeight);
 uiDrawPathEnd(path);
 uiDrawStroke(p->Context, path, &brush, &sp);
 uiDrawFreePath(path);


 uiDrawMatrixSetIdentity(&m);
 uiDrawMatrixTranslate(&m, xoffLeft, yoffTop);
 uiDrawTransform(p->Context, &m);


 uiColorButtonColor(colorButton, &graphR, &graphG, &graphB, &graphA);
 brush.Type = uiDrawBrushTypeSolid;
 brush.R = graphR;
 brush.G = graphG;
 brush.B = graphB;



 path = constructGraph(graphWidth, graphHeight, 1);
 brush.A = graphA / 2;
 uiDrawFill(p->Context, path, &brush);
 uiDrawFreePath(path);


 path = constructGraph(graphWidth, graphHeight, 0);
 brush.A = graphA;
 uiDrawStroke(p->Context, path, &brush, &sp);
 uiDrawFreePath(path);


 if (currentPoint != -1) {
  double xs[10], ys[10];

  pointLocations(graphWidth, graphHeight, xs, ys);
  path = uiDrawNewPath(uiDrawFillModeWinding);
  uiDrawPathNewFigureWithArc(path,
   xs[currentPoint], ys[currentPoint],
   pointRadius,
   0, 6.23,
   0);
  uiDrawPathEnd(path);

  uiDrawFill(p->Context, path, &brush);
  uiDrawFreePath(path);
 }
}
