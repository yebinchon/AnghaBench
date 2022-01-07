
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiDrawMatrix ;
typedef int cairo_matrix_t ;


 scalar_t__ CAIRO_STATUS_SUCCESS ;
 scalar_t__ cairo_matrix_invert (int *) ;
 int m2c (int *,int *) ;

int uiDrawMatrixInvertible(uiDrawMatrix *m)
{
 cairo_matrix_t c;

 m2c(m, &c);
 return cairo_matrix_invert(&c) == CAIRO_STATUS_SUCCESS;
}
