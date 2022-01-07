
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
typedef TYPE_3__ uiTableValue ;



void uiTableValueColor(const uiTableValue *v, double *r, double *g, double *b, double *a)
{
 *r = v->u.color.r;
 *g = v->u.color.g;
 *b = v->u.color.b;
 *a = v->u.color.a;
}
