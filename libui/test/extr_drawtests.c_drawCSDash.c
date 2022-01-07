
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {double* Dashes; int NumDashes; double DashPhase; double Thickness; int MiterLimit; int Join; int Cap; } ;
typedef TYPE_1__ uiDrawStrokeParams ;
typedef int uiDrawPath ;
typedef int uiDrawBrush ;
struct TYPE_6__ {int Context; } ;
typedef TYPE_2__ uiAreaDrawParams ;
typedef int dashes ;


 int crsourcergba (int *,int ,int ,int ,int) ;
 int uiDrawDefaultMiterLimit ;
 int uiDrawFillModeWinding ;
 int uiDrawFreePath (int *) ;
 int uiDrawLineCapFlat ;
 int uiDrawLineJoinMiter ;
 int * uiDrawNewPath (int ) ;
 int uiDrawPathBezierTo (int *,double,double,double,double,double,double) ;
 int uiDrawPathEnd (int *) ;
 int uiDrawPathLineTo (int *,double,double) ;
 int uiDrawPathNewFigure (int *,double,double) ;
 int uiDrawStroke (int ,int *,int *,TYPE_1__*) ;

__attribute__((used)) static void drawCSDash(uiAreaDrawParams *p)
{
 double dashes[] = {
  50.0,
  10.0,
  10.0,
  10.0
 };
 int ndash = sizeof (dashes)/sizeof(dashes[0]);
 double offset = -50.0;

 uiDrawBrush source;
 uiDrawStrokeParams sp;
 uiDrawPath *path;

 crsourcergba(&source, 0, 0, 0, 1);
 sp.Cap = uiDrawLineCapFlat;
 sp.Join = uiDrawLineJoinMiter;
 sp.MiterLimit = uiDrawDefaultMiterLimit;
 sp.Dashes = dashes;
 sp.NumDashes = ndash;
 sp.DashPhase = offset;
 sp.Thickness = 10.0;

 path = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathNewFigure(path, 128.0, 25.6);
 uiDrawPathLineTo(path, 230.4, 230.4);
 uiDrawPathLineTo(path, 230.4 -102.4, 230.4 + 0.0);
 uiDrawPathBezierTo(path,
  51.2, 230.4,
  51.2, 128.0,
  128.0, 128.0);
 uiDrawPathEnd(path);

 uiDrawStroke(p->Context, path, &source, &sp);
 uiDrawFreePath(path);
}
