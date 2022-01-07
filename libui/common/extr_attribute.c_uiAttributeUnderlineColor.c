
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uiUnderlineColor ;
struct TYPE_6__ {int underlineColor; } ;
struct TYPE_7__ {TYPE_1__ color; } ;
struct TYPE_8__ {TYPE_2__ u; } ;
typedef TYPE_3__ uiAttribute ;


 int uiAttributeColor (TYPE_3__ const*,double*,double*,double*,double*) ;

void uiAttributeUnderlineColor(const uiAttribute *a, uiUnderlineColor *u, double *r, double *g, double *b, double *alpha)
{
 *u = a->u.color.underlineColor;
 uiAttributeColor(a, r, g, b, alpha);
}
