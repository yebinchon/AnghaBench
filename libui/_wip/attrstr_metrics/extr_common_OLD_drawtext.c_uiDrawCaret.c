
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Height; scalar_t__ Y; } ;
typedef TYPE_1__ uiDrawTextLayoutLineMetrics ;
typedef int uiDrawTextLayout ;
typedef int uiDrawPath ;
typedef int uiDrawContext ;
struct TYPE_6__ {int A; int B; int G; int R; int Type; } ;
typedef TYPE_2__ uiDrawBrush ;
struct caretDrawParams {double xoff; int a; int b; int g; int r; int width; } ;


 int caretDrawParams (int *,int ,struct caretDrawParams*) ;
 int uiDrawBrushTypeSolid ;
 int uiDrawFill (int *,int *,TYPE_2__*) ;
 int uiDrawFillModeWinding ;
 int uiDrawFreePath (int *) ;
 int * uiDrawNewPath (int ) ;
 int uiDrawPathAddRectangle (int *,double,scalar_t__,int ,int ) ;
 int uiDrawPathEnd (int *) ;
 int uiDrawRestore (int *) ;
 int uiDrawSave (int *) ;
 double uiDrawTextLayoutByteLocationInLine (int *,size_t,int) ;
 int uiDrawTextLayoutLineByteRange (int *,int,size_t*,size_t*) ;
 int uiDrawTextLayoutLineGetMetrics (int *,int,TYPE_1__*) ;
 int uiDrawTextLayoutNumLines (int *) ;

void uiDrawCaret(uiDrawContext *c, double x, double y, uiDrawTextLayout *layout, size_t pos, int *line)
{
 double xoff;
 uiDrawTextLayoutLineMetrics m;
 struct caretDrawParams cdp;
 uiDrawPath *path;
 uiDrawBrush brush;

 if (*line < 0)
  *line = 0;
 if (*line > (uiDrawTextLayoutNumLines(layout) - 1))
  *line = (uiDrawTextLayoutNumLines(layout) - 1);

 xoff = uiDrawTextLayoutByteLocationInLine(layout, pos, *line);
 while (xoff < 0) {
  size_t start, end;

  uiDrawTextLayoutLineByteRange(layout, *line, &start, &end);
  if (end < pos)
   (*line)++;
  else
   (*line)--;
  xoff = uiDrawTextLayoutByteLocationInLine(layout, pos, *line);
 }
 uiDrawTextLayoutLineGetMetrics(layout, *line, &m);

 caretDrawParams(c, m.Height, &cdp);

 uiDrawSave(c);

 path = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathAddRectangle(path,

  x + xoff - cdp.xoff, y + m.Y,
  cdp.width, m.Height);
 uiDrawPathEnd(path);
 brush.Type = uiDrawBrushTypeSolid;
 brush.R = cdp.r;
 brush.G = cdp.g;
 brush.B = cdp.b;
 brush.A = cdp.a;
 uiDrawFill(c, path, &brush);
 uiDrawFreePath(path);

 uiDrawRestore(c);
}
