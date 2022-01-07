
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiDrawMatrix ;
typedef int cairo_matrix_t ;


 int c2m (int *,int *) ;
 int cairo_matrix_multiply (int *,int *,int *) ;
 int m2c (int *,int *) ;

void uiDrawMatrixMultiply(uiDrawMatrix *dest, uiDrawMatrix *src)
{
 cairo_matrix_t c;
 cairo_matrix_t d;

 m2c(dest, &c);
 m2c(src, &d);
 cairo_matrix_multiply(&c, &c, &d);
 c2m(&c, dest);
}
