
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiDrawMatrix ;
typedef int cairo_matrix_t ;


 int c2m (int *,int *) ;
 int cairo_matrix_scale (int *,double,double) ;
 int cairo_matrix_translate (int *,double,double) ;
 int m2c (int *,int *) ;
 int uiprivScaleCenter (double,double,double*,double*) ;

void uiDrawMatrixScale(uiDrawMatrix *m, double xCenter, double yCenter, double x, double y)
{
 cairo_matrix_t c;
 double xt, yt;

 m2c(m, &c);
 xt = x;
 yt = y;
 uiprivScaleCenter(xCenter, yCenter, &xt, &yt);
 cairo_matrix_translate(&c, xt, yt);
 cairo_matrix_scale(&c, x, y);
 cairo_matrix_translate(&c, -xt, -yt);
 c2m(&c, m);
}
