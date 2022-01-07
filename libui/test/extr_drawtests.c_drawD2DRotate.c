
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {double Thickness; void* MiterLimit; void* Join; void* Cap; scalar_t__ DashPhase; scalar_t__ NumDashes; int * Dashes; } ;
typedef TYPE_1__ uiDrawStrokeParams ;
typedef int uiDrawPath ;
typedef int uiDrawMatrix ;
typedef int uiDrawBrush ;
struct TYPE_6__ {int Context; } ;
typedef TYPE_2__ uiAreaDrawParams ;


 int d2dBlack ;
 int d2dForestGreen ;
 int d2dSolidBrush (int *,int ,double) ;
 int d2dWhite ;
 void* uiDrawDefaultMiterLimit ;
 int uiDrawFill (int ,int *,int *) ;
 int uiDrawFillModeWinding ;
 int uiDrawFreePath (int *) ;
 void* uiDrawLineCapFlat ;
 void* uiDrawLineJoinMiter ;
 int uiDrawMatrixRotate (int *,double,double,double) ;
 int uiDrawMatrixSetIdentity (int *) ;
 int uiDrawMatrixTranslate (int *,int,int) ;
 int * uiDrawNewPath (int ) ;
 int uiDrawPathAddRectangle (int *,double,double,double,double) ;
 int uiDrawPathEnd (int *) ;
 int uiDrawRestore (int ) ;
 int uiDrawSave (int ) ;
 int uiDrawStroke (int ,int *,int *,TYPE_1__*) ;
 int uiDrawTransform (int ,int *) ;
 int uiPi ;

__attribute__((used)) static void drawD2DRotate(uiAreaDrawParams *p)
{
 uiDrawPath *path;
 uiDrawBrush original;
 uiDrawBrush fill;
 uiDrawBrush transform;
 uiDrawStrokeParams originalsp;
 uiDrawStrokeParams transformsp;
 uiDrawMatrix m;

 originalsp.Dashes = ((void*)0);
 originalsp.NumDashes = 0;
 originalsp.DashPhase = 0;
 transformsp.Dashes = ((void*)0);
 transformsp.NumDashes = 0;
 transformsp.DashPhase = 0;

 path = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathAddRectangle(path, 438.0, 301.5, 498.0 - 438.0, 361.5 - 301.5);
 uiDrawPathEnd(path);


 d2dSolidBrush(&original, d2dBlack, 1.0);
 d2dSolidBrush(&fill, d2dWhite, 0.5);
 d2dSolidBrush(&transform, d2dForestGreen, 1.0);

 originalsp.Thickness = 1.0;
 originalsp.Cap = uiDrawLineCapFlat;
 originalsp.Join = uiDrawLineJoinMiter;
 originalsp.MiterLimit = uiDrawDefaultMiterLimit;
 transformsp.Thickness = 1.0;
 transformsp.Cap = uiDrawLineCapFlat;
 transformsp.Join = uiDrawLineJoinMiter;
 transformsp.MiterLimit = uiDrawDefaultMiterLimit;


 uiDrawSave(p->Context);

 uiDrawStroke(p->Context, path, &original, &originalsp);

 uiDrawMatrixSetIdentity(&m);
 uiDrawMatrixRotate(&m,
  468.0, 331.5,
  45.0 * (uiPi / 180));
 uiDrawTransform(p->Context, &m);

 uiDrawFill(p->Context, path, &fill);
 uiDrawStroke(p->Context, path, &transform, &transformsp);

 uiDrawRestore(p->Context);


 uiDrawMatrixSetIdentity(&m);
 uiDrawMatrixTranslate(&m, -200, -200);
 uiDrawTransform(p->Context, &m);

 uiDrawStroke(p->Context, path, &original, &originalsp);

 uiDrawMatrixSetIdentity(&m);
 uiDrawMatrixRotate(&m,
  438.0, 301.5,
  45.0 * (uiPi / 180));
 uiDrawTransform(p->Context, &m);

 uiDrawFill(p->Context, path, &fill);
 uiDrawStroke(p->Context, path, &transform, &transformsp);

 uiDrawFreePath(path);
}
