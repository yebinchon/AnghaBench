
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int X; int Y; double Width; double Height; scalar_t__ Descent; scalar_t__ BaselineY; scalar_t__ Ascent; } ;
typedef TYPE_1__ uiDrawTextLayoutLineMetrics ;
typedef int uiDrawTextLayout ;
typedef int uiDrawPath ;
struct TYPE_13__ {double R; double G; double B; double A; int Type; } ;
typedef TYPE_2__ uiDrawBrush ;
struct TYPE_14__ {int AreaWidth; int AreaHeight; int Context; } ;
typedef TYPE_3__ uiAreaDrawParams ;
struct TYPE_15__ {int Width; } ;


 TYPE_2__* fillBrushes ;
 int margins ;
 TYPE_6__ params ;
 int showExtents ;
 int showLineBounds ;
 int showLineGuides ;
 TYPE_2__* strokeBrushes ;
 int strokeParams ;
 scalar_t__ uiCheckboxChecked (int ) ;
 int uiDrawBrushTypeSolid ;
 int uiDrawClip (int ,int *) ;
 int uiDrawFill (int ,int *,TYPE_2__*) ;
 int uiDrawFillModeWinding ;
 int uiDrawFreePath (int *) ;
 int uiDrawFreeTextLayout (int *) ;
 int * uiDrawNewPath (int ) ;
 int * uiDrawNewTextLayout (TYPE_6__*) ;
 int uiDrawPathAddRectangle (int *,int,int,double,double) ;
 int uiDrawPathEnd (int *) ;
 int uiDrawPathLineTo (int *,int,scalar_t__) ;
 int uiDrawPathNewFigure (int *,int,scalar_t__) ;
 int uiDrawRestore (int ) ;
 int uiDrawSave (int ) ;
 int uiDrawStroke (int ,int *,TYPE_2__*,int *) ;
 int uiDrawText (int ,int *,int,int) ;
 int uiDrawTextLayoutExtents (int *,double*,double*) ;
 int uiDrawTextLayoutLineGetMetrics (int *,int,TYPE_1__*) ;
 int uiDrawTextLayoutNumLines (int *) ;

__attribute__((used)) static void draw(uiAreaDrawParams *p)
{
 uiDrawPath *path;
 uiDrawTextLayout *layout;
 uiDrawBrush b;

 b.Type = uiDrawBrushTypeSolid;


 uiDrawSave(p->Context);

 path = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathAddRectangle(path, margins, margins,
  p->AreaWidth - 2 * margins,
  p->AreaHeight - 2 * margins);
 uiDrawPathEnd(path);
 uiDrawClip(p->Context, path);
 uiDrawFreePath(path);
 params.Width = p->AreaWidth - 2 * margins;
 layout = uiDrawNewTextLayout(&params);
 uiDrawText(p->Context, layout, margins, margins);

 uiDrawRestore(p->Context);

 if (uiCheckboxChecked(showExtents)) {
  double width, height;

  uiDrawTextLayoutExtents(layout, &width, &height);
  path = uiDrawNewPath(uiDrawFillModeWinding);
  uiDrawPathAddRectangle(path, margins, margins,
   width, height);
  uiDrawPathEnd(path);
  b.R = 1.0;
  b.G = 0.0;
  b.B = 1.0;
  b.A = 0.5;
  uiDrawStroke(p->Context, path, &b, &strokeParams);
  uiDrawFreePath(path);
 }

 if (uiCheckboxChecked(showLineBounds) || uiCheckboxChecked(showLineGuides)) {
  uiDrawTextLayoutLineMetrics m;
  int i, n;
  int fill = 0;

  n = uiDrawTextLayoutNumLines(layout);
  for (i = 0; i < n; i++) {
   uiDrawTextLayoutLineGetMetrics(layout, i, &m);

   if (uiCheckboxChecked(showLineBounds)) {
    path = uiDrawNewPath(uiDrawFillModeWinding);
    uiDrawPathAddRectangle(path, margins + m.X, margins + m.Y,
     m.Width, m.Height);
    uiDrawPathEnd(path);
    uiDrawFill(p->Context, path, fillBrushes + fill);
    uiDrawFreePath(path);
    fill = (fill + 1) % 4;
   }
   if (uiCheckboxChecked(showLineGuides)) {

    path = uiDrawNewPath(uiDrawFillModeWinding);
    uiDrawPathNewFigure(path,
     margins + m.X,
     margins + m.BaselineY);
    uiDrawPathLineTo(path,
     margins + m.X + m.Width,
     margins + m.BaselineY);
    uiDrawPathEnd(path);
    uiDrawStroke(p->Context, path, &(strokeBrushes[0]), &strokeParams);
    uiDrawFreePath(path);


    path = uiDrawNewPath(uiDrawFillModeWinding);
    uiDrawPathNewFigure(path,
     margins + m.X,
     margins + m.BaselineY - m.Ascent);
    uiDrawPathLineTo(path,
     margins + m.X + m.Width,
     margins + m.BaselineY - m.Ascent);
    uiDrawPathEnd(path);
    uiDrawStroke(p->Context, path, &(strokeBrushes[1]), &strokeParams);
    uiDrawFreePath(path);


    path = uiDrawNewPath(uiDrawFillModeWinding);
    uiDrawPathNewFigure(path,
     margins + m.X,
     margins + m.BaselineY + m.Descent);
    uiDrawPathLineTo(path,
     margins + m.X + m.Width,
     margins + m.BaselineY + m.Descent);
    uiDrawPathEnd(path);
    uiDrawStroke(p->Context, path, &(strokeBrushes[2]), &strokeParams);
    uiDrawFreePath(path);
   }
  }
 }

 uiDrawFreeTextLayout(layout);
}
