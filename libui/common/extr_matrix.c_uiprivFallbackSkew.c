
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {double M12; double M21; double M31; double M32; } ;
typedef TYPE_1__ uiDrawMatrix ;


 double tan (double) ;
 int uiDrawMatrixMultiply (TYPE_1__*,TYPE_1__*) ;
 int uiDrawMatrixSetIdentity (TYPE_1__*) ;

void uiprivFallbackSkew(uiDrawMatrix *m, double x, double y, double xamount, double yamount)
{
 uiDrawMatrix n;

 uiDrawMatrixSetIdentity(&n);

 n.M12 = tan(yamount);
 n.M21 = tan(xamount);
 n.M31 = -y * tan(xamount);
 n.M32 = -x * tan(yamount);
 uiDrawMatrixMultiply(m, &n);
}
