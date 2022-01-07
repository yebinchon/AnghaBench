
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * datapoints ;
 int uiSpinboxValue (int ) ;

__attribute__((used)) static void pointLocations(double width, double height, double *xs, double *ys)
{
 double xincr, yincr;
 int i, n;

 xincr = width / 9;
 yincr = height / 100;

 for (i = 0; i < 10; i++) {

  n = uiSpinboxValue(datapoints[i]);

  n = 100 - n;
  xs[i] = xincr * i;
  ys[i] = yincr * n;
 }
}
