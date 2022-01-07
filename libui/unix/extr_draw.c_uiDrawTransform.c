
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uiDrawMatrix ;
struct TYPE_3__ {int cr; } ;
typedef TYPE_1__ uiDrawContext ;
typedef int cairo_matrix_t ;


 int cairo_transform (int ,int *) ;
 int uiprivM2C (int *,int *) ;

void uiDrawTransform(uiDrawContext *c, uiDrawMatrix *m)
{
 cairo_matrix_t cm;

 uiprivM2C(m, &cm);
 cairo_transform(c->cr, &cm);
}
