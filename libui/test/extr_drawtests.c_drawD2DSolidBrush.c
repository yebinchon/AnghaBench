
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {double Thickness; int MiterLimit; int Join; int Cap; scalar_t__ DashPhase; scalar_t__ NumDashes; int * Dashes; } ;
typedef TYPE_1__ uiDrawStrokeParams ;
typedef int uiDrawPath ;
typedef int uiDrawBrush ;
struct TYPE_6__ {int Context; } ;
typedef TYPE_2__ uiAreaDrawParams ;


 int d2dBlack ;
 int d2dSolidBrush (int *,int ,double) ;
 int d2dYellowGreen ;
 int uiDrawDefaultMiterLimit ;
 int uiDrawFill (int ,int *,int *) ;
 int uiDrawFillModeWinding ;
 int uiDrawFreePath (int *) ;
 int uiDrawLineCapFlat ;
 int uiDrawLineJoinMiter ;
 int * uiDrawNewPath (int ) ;
 int uiDrawPathAddRectangle (int *,int,int,int,int) ;
 int uiDrawPathEnd (int *) ;
 int uiDrawStroke (int ,int *,int *,TYPE_1__*) ;

__attribute__((used)) static void drawD2DSolidBrush(uiAreaDrawParams *p)
{
 uiDrawPath *path;
 uiDrawBrush black;
 uiDrawBrush yellowGreen;
 uiDrawStrokeParams sp;

 sp.Dashes = ((void*)0);
 sp.NumDashes = 0;
 sp.DashPhase = 0;

 d2dSolidBrush(&black, d2dBlack, 1.0);
 d2dSolidBrush(&yellowGreen, d2dYellowGreen, 1.0);

 path = uiDrawNewPath(uiDrawFillModeWinding);


 uiDrawPathAddRectangle(path, 25, 25, 150, 150);
 uiDrawPathEnd(path);

 uiDrawFill(p->Context, path, &yellowGreen);
 sp.Thickness = 1.0;
 sp.Cap = uiDrawLineCapFlat;
 sp.Join = uiDrawLineJoinMiter;
 sp.MiterLimit = uiDrawDefaultMiterLimit;
 uiDrawStroke(p->Context, path, &black, &sp);

 uiDrawFreePath(path);
}
