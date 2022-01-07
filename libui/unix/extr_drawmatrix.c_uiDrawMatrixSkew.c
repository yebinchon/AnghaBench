
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiDrawMatrix ;


 int uiprivFallbackSkew (int *,double,double,double,double) ;

void uiDrawMatrixSkew(uiDrawMatrix *m, double x, double y, double xamount, double yamount)
{
 uiprivFallbackSkew(m, x, y, xamount, yamount);
}
