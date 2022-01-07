
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int X; int Y; scalar_t__ Height; scalar_t__ Width; } ;
typedef TYPE_1__ uiDrawTextLayoutLineMetrics ;
typedef int uiDrawTextLayout ;
typedef int uiDrawPath ;
struct TYPE_9__ {int Type; } ;
typedef TYPE_2__ uiDrawBrush ;
struct TYPE_10__ {int Context; scalar_t__ AreaWidth; scalar_t__ AreaHeight; } ;
typedef TYPE_3__ uiAreaDrawParams ;
struct TYPE_11__ {scalar_t__ Width; } ;


 scalar_t__ fillBrushes ;
 int margins ;
 TYPE_5__ params ;
 int showLineBounds ;
 scalar_t__ uiCheckboxChecked (int ) ;
 int uiDrawBrushTypeSolid ;
 int uiDrawClip (int ,int *) ;
 int uiDrawFill (int ,int *,scalar_t__) ;
 int uiDrawFillModeWinding ;
 int uiDrawFreePath (int *) ;
 int uiDrawFreeTextLayout (int *) ;
 int * uiDrawNewPath (int ) ;
 int * uiDrawNewTextLayout (TYPE_5__*) ;
 int uiDrawPathAddRectangle (int *,int,int,scalar_t__,scalar_t__) ;
 int uiDrawPathEnd (int *) ;
 int uiDrawRestore (int ) ;
 int uiDrawSave (int ) ;
 int uiDrawText (int ,int *,int,int) ;
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

 if (uiCheckboxChecked(showLineBounds)) {
  uiDrawTextLayoutLineMetrics m;
  int i, n;
  int fill = 0;

  n = uiDrawTextLayoutNumLines(layout);
  for (i = 0; i < n; i++) {
   uiDrawTextLayoutLineGetMetrics(layout, i, &m);

   path = uiDrawNewPath(uiDrawFillModeWinding);
   uiDrawPathAddRectangle(path, margins + m.X, margins + m.Y,
    m.Width, m.Height);
   uiDrawPathEnd(path);
   uiDrawFill(p->Context, path, fillBrushes + fill);
   uiDrawFreePath(path);
   fill = (fill + 1) % 4;
  }
 }

 uiDrawFreeTextLayout(layout);
}
