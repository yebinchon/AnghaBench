
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uiDrawPath ;
typedef int uiDrawBrush ;
struct TYPE_3__ {int Context; int AreaHeight; int AreaWidth; } ;
typedef TYPE_1__ uiAreaDrawParams ;


 int d2dSolidBrush (int *,int ,double) ;
 int uiDrawFill (int ,int *,int *) ;
 int uiDrawFillModeWinding ;
 int uiDrawFreePath (int *) ;
 int * uiDrawNewPath (int ) ;
 int uiDrawPathAddRectangle (int *,int ,int ,int ,int ) ;
 int uiDrawPathEnd (int *) ;

__attribute__((used)) static void d2dClear(uiAreaDrawParams *p, uint32_t color, double alpha)
{
 uiDrawPath *path;
 uiDrawBrush brush;

 d2dSolidBrush(&brush, color, alpha);
 path = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathAddRectangle(path, 0, 0, p->AreaWidth, p->AreaHeight);
 uiDrawPathEnd(path);
 uiDrawFill(p->Context, path, &brush);
 uiDrawFreePath(path);
}
