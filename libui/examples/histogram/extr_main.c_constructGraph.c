
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiDrawPath ;


 int pointLocations (double,double,double*,double*) ;
 int uiDrawFillModeWinding ;
 int * uiDrawNewPath (int ) ;
 int uiDrawPathCloseFigure (int *) ;
 int uiDrawPathEnd (int *) ;
 int uiDrawPathLineTo (int *,double,double) ;
 int uiDrawPathNewFigure (int *,double,double) ;

__attribute__((used)) static uiDrawPath *constructGraph(double width, double height, int extend)
{
 uiDrawPath *path;
 double xs[10], ys[10];
 int i;

 pointLocations(width, height, xs, ys);

 path = uiDrawNewPath(uiDrawFillModeWinding);

 uiDrawPathNewFigure(path, xs[0], ys[0]);
 for (i = 1; i < 10; i++)
  uiDrawPathLineTo(path, xs[i], ys[i]);

 if (extend) {
  uiDrawPathLineTo(path, width, height);
  uiDrawPathLineTo(path, 0, height);
  uiDrawPathCloseFigure(path);
 }

 uiDrawPathEnd(path);
 return path;
}
