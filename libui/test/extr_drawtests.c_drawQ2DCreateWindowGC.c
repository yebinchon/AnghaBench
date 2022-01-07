
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uiDrawPath ;
typedef int uiDrawBrush ;
struct TYPE_4__ {int Context; } ;
typedef TYPE_1__ uiAreaDrawParams ;


 int cgaddrect (int *,TYPE_1__*,int ,int ,int,int) ;
 int crsourcergba (int *,int,int ,int,double) ;
 int uiDrawFill (int ,int *,int *) ;
 int uiDrawFillModeWinding ;
 int uiDrawFreePath (int *) ;
 int * uiDrawNewPath (int ) ;
 int uiDrawPathEnd (int *) ;

__attribute__((used)) static void drawQ2DCreateWindowGC(uiAreaDrawParams *p)
{
 uiDrawPath *path;
 uiDrawBrush brush;

 crsourcergba(&brush, 1, 0, 0, 1);
 path = uiDrawNewPath(uiDrawFillModeWinding);
 cgaddrect(path, p, 0, 0, 200, 100);
 uiDrawPathEnd(path);
 uiDrawFill(p->Context, path, &brush);
 uiDrawFreePath(path);

 crsourcergba(&brush, 0, 0, 1, .5);
 path = uiDrawNewPath(uiDrawFillModeWinding);
 cgaddrect(path, p, 0, 0, 100, 200);
 uiDrawPathEnd(path);
 uiDrawFill(p->Context, path, &brush);
 uiDrawFreePath(path);
}
