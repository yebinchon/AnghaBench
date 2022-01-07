
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {double Thickness; void* Join; scalar_t__ DashPhase; scalar_t__ NumDashes; int * Dashes; int MiterLimit; int Cap; } ;
typedef TYPE_1__ uiDrawStrokeParams ;
typedef int uiDrawPath ;
typedef int uiDrawBrush ;
struct TYPE_6__ {int Context; } ;
typedef TYPE_2__ uiAreaDrawParams ;


 int crsourcergba (int *,int ,int ,int ,int) ;
 int uiDrawDefaultMiterLimit ;
 int uiDrawFillModeWinding ;
 int uiDrawFreePath (int *) ;
 int uiDrawLineCapFlat ;
 void* uiDrawLineJoinBevel ;
 void* uiDrawLineJoinMiter ;
 void* uiDrawLineJoinRound ;
 int * uiDrawNewPath (int ) ;
 int uiDrawPathEnd (int *) ;
 int uiDrawPathLineTo (int *,double,double) ;
 int uiDrawPathNewFigure (int *,double,double) ;
 int uiDrawStroke (int ,int *,int *,TYPE_1__*) ;

__attribute__((used)) static void drawCSSetLineJoin(uiAreaDrawParams *p)
{
 uiDrawBrush source;
 uiDrawStrokeParams sp;
 uiDrawPath *path;

 crsourcergba(&source, 0, 0, 0, 1);
 sp.Cap = uiDrawLineCapFlat;
 sp.Join = uiDrawLineJoinMiter;
 sp.MiterLimit = uiDrawDefaultMiterLimit;
 sp.Dashes = ((void*)0);
 sp.NumDashes = 0;
 sp.DashPhase = 0;

 sp.Thickness = 40.96;
 path = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathNewFigure(path, 76.8, 84.48);
 uiDrawPathLineTo(path, 76.8 + 51.2, 84.48 -51.2);
 uiDrawPathLineTo(path, 76.8 + 51.2 + 51.2, 84.48 - 51.2 + 51.2);
 uiDrawPathEnd(path);
 sp.Join = uiDrawLineJoinMiter;
 uiDrawStroke(p->Context, path, &source, &sp);
 uiDrawFreePath(path);

 path = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathNewFigure(path, 76.8, 161.28);
 uiDrawPathLineTo(path, 76.8 + 51.2, 161.28 -51.2);
 uiDrawPathLineTo(path, 76.8 + 51.2 + 51.2, 161.28 - 51.2 + 51.2);
 uiDrawPathEnd(path);
 sp.Join = uiDrawLineJoinBevel;
 uiDrawStroke(p->Context, path, &source, &sp);
 uiDrawFreePath(path);

 path = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathNewFigure(path, 76.8, 238.08);
 uiDrawPathLineTo(path, 76.8 + 51.2, 238.08 -51.2);
 uiDrawPathLineTo(path, 76.8 + 51.2 + 51.2, 238.08 - 51.2 + 51.2);
 uiDrawPathEnd(path);
 sp.Join = uiDrawLineJoinRound;
 uiDrawStroke(p->Context, path, &source, &sp);
 uiDrawFreePath(path);
}
