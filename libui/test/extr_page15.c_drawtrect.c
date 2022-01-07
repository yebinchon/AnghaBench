
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uiDrawPath ;
typedef int uiDrawContext ;
struct TYPE_4__ {double R; double G; double B; double A; int Type; } ;
typedef TYPE_1__ uiDrawBrush ;
struct trect {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; scalar_t__ in; } ;


 int memset (TYPE_1__*,int ,int) ;
 int uiDrawBrushTypeSolid ;
 int uiDrawFill (int *,int *,TYPE_1__*) ;
 int uiDrawFillModeWinding ;
 int uiDrawFreePath (int *) ;
 int * uiDrawNewPath (int ) ;
 int uiDrawPathAddRectangle (int *,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int uiDrawPathEnd (int *) ;

__attribute__((used)) static void drawtrect(uiDrawContext *c, struct trect tr, double r, double g, double bl)
{
 uiDrawPath *p;
 uiDrawBrush b;

 memset(&b, 0, sizeof (uiDrawBrush));
 b.Type = uiDrawBrushTypeSolid;
 b.R = r;
 b.G = g;
 b.B = bl;
 b.A = 1.0;
 if (tr.in) {
  b.R += b.R * 0.75;
  b.G += b.G * 0.75;
  b.B += b.B * 0.75;
 }
 p = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathAddRectangle(p,
  tr.left,
  tr.top,
  tr.right - tr.left,
  tr.bottom - tr.top);
 uiDrawPathEnd(p);
 uiDrawFill(c, p, &b);
 uiDrawFreePath(p);
}
