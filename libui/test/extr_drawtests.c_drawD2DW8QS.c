
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uiDrawPath ;
typedef int uiDrawBrush ;
struct TYPE_3__ {int AreaWidth; int AreaHeight; int Context; } ;
typedef TYPE_1__ uiAreaDrawParams ;


 int d2dBlack ;
 int d2dSolidBrush (int *,int ,double) ;
 int uiDrawFill (int ,int *,int *) ;
 int uiDrawFillModeWinding ;
 int uiDrawFreePath (int *) ;
 int * uiDrawNewPath (int ) ;
 int uiDrawPathAddRectangle (int *,int,int,int,int) ;
 int uiDrawPathEnd (int *) ;

__attribute__((used)) static void drawD2DW8QS(uiAreaDrawParams *p)
{
 uiDrawPath *path;
 uiDrawBrush brush;

 d2dSolidBrush(&brush, d2dBlack, 1.0);
 path = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathAddRectangle(path,
  100,
  100,
  (p->AreaWidth - 100) - 100,
  (p->AreaHeight - 100) - 100);
 uiDrawPathEnd(path);
 uiDrawFill(p->Context, path, &brush);
 uiDrawFreePath(path);
}
