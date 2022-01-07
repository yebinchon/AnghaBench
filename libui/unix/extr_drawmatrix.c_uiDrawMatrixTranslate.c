
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiDrawMatrix ;
typedef int cairo_matrix_t ;


 int c2m (int *,int *) ;
 int cairo_matrix_translate (int *,double,double) ;
 int m2c (int *,int *) ;

void uiDrawMatrixTranslate(uiDrawMatrix *m, double x, double y)
{
 cairo_matrix_t c;

 m2c(m, &c);
 cairo_matrix_translate(&c, x, y);
 c2m(&c, m);
}
