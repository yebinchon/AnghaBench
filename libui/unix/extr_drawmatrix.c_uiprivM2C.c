
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiDrawMatrix ;
typedef int cairo_matrix_t ;


 int m2c (int *,int *) ;

void uiprivM2C(uiDrawMatrix *m, cairo_matrix_t *c)
{
 m2c(m, c);
}
