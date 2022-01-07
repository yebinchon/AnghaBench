
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Y; int X; int AreaHeight; int AreaWidth; } ;
typedef TYPE_1__ uiAreaMouseEvent ;
typedef int uiAreaHandler ;
typedef int uiArea ;


 int currentPoint ;
 int graphSize (int ,int ,double*,double*) ;
 int histogram ;
 scalar_t__ inPoint (int ,int ,double,double) ;
 int pointLocations (double,double,double*,double*) ;
 int uiAreaQueueRedrawAll (int ) ;

__attribute__((used)) static void handlerMouseEvent(uiAreaHandler *a, uiArea *area, uiAreaMouseEvent *e)
{
 double graphWidth, graphHeight;
 double xs[10], ys[10];
 int i;

 graphSize(e->AreaWidth, e->AreaHeight, &graphWidth, &graphHeight);
 pointLocations(graphWidth, graphHeight, xs, ys);

 for (i = 0; i < 10; i++)
  if (inPoint(e->X, e->Y, xs[i], ys[i]))
   break;
 if (i == 10)
  i = -1;

 currentPoint = i;

 uiAreaQueueRedrawAll(histogram);
}
