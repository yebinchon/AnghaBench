
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ M32; scalar_t__ M31; } ;
typedef TYPE_1__ uiDrawMatrix ;


 int uiDrawMatrixTransformPoint (TYPE_1__*,double*,double*) ;

void uiprivFallbackTransformSize(uiDrawMatrix *m, double *x, double *y)
{
 uiDrawMatrix m2;

 m2 = *m;
 m2.M31 = 0;
 m2.M32 = 0;
 uiDrawMatrixTransformPoint(&m2, x, y);
}
