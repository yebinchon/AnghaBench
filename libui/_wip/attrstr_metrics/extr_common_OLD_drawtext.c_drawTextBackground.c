
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Height; scalar_t__ Y; } ;
typedef TYPE_1__ uiDrawTextLayoutLineMetrics ;
typedef int uiDrawTextLayout ;
typedef int uiDrawPath ;
typedef int uiDrawContext ;
typedef int uiDrawBrush ;


 int uiDrawFill (int *,int *,int *) ;
 int uiDrawFillModeWinding ;
 int uiDrawFreePath (int *) ;
 int * uiDrawNewPath (int ) ;
 int uiDrawPathAddRectangle (int *,double,scalar_t__,double,int ) ;
 int uiDrawPathEnd (int *) ;
 double uiDrawTextLayoutByteLocationInLine (int *,size_t,int) ;
 int uiDrawTextLayoutExtents (int *,double*,double*) ;
 int uiDrawTextLayoutLineByteRange (int *,int,size_t*,size_t*) ;
 int uiDrawTextLayoutLineGetMetrics (int *,int,TYPE_1__*) ;
 int uiDrawTextLayoutNumLines (int *) ;

void drawTextBackground(uiDrawContext *c, double x, double y, uiDrawTextLayout *layout, size_t start, size_t end, uiDrawBrush *brush, int isSelection)
{
 int line, nLines;
 size_t lstart, lend;
 double layoutwid, layoutht;

 uiDrawTextLayoutExtents(layout, &layoutwid, &layoutht);
 nLines = uiDrawTextLayoutNumLines(layout);
 for (line = 0; line < nLines; line++) {
  uiDrawTextLayoutLineByteRange(layout, line, &lstart, &lend);
  if (start >= lstart && start < lend)
   break;
 }
 while (end - start > 0) {
  uiDrawTextLayoutLineMetrics m;
  double startx, endx;
  uiDrawPath *path;

  uiDrawTextLayoutLineByteRange(layout, line, &lstart, &lend);
  if (lend > end)
   lend = end;
  startx = uiDrawTextLayoutByteLocationInLine(layout, start, line);

  endx = layoutwid;
  if (!isSelection || end <= lend)
   endx = uiDrawTextLayoutByteLocationInLine(layout, lend, line);
  uiDrawTextLayoutLineGetMetrics(layout, line, &m);
  path = uiDrawNewPath(uiDrawFillModeWinding);
  uiDrawPathAddRectangle(path,
   x + startx, y + m.Y,
   endx - startx, m.Height);
  uiDrawPathEnd(path);
  uiDrawFill(c, path, brush);
  uiDrawFreePath(path);
  line++;
  start = lend;
 }
}
