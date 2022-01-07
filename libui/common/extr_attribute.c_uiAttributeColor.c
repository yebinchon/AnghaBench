
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {double r; double g; double b; double a; } ;
struct TYPE_6__ {TYPE_1__ color; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
typedef TYPE_3__ uiAttribute ;



void uiAttributeColor(const uiAttribute *a, double *r, double *g, double *b, double *alpha)
{
 *r = a->u.color.r;
 *g = a->u.color.g;
 *b = a->u.color.b;
 *alpha = a->u.color.a;
}
