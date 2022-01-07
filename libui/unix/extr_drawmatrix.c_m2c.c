
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int M32; int M31; int M22; int M21; int M12; int M11; } ;
typedef TYPE_1__ uiDrawMatrix ;
struct TYPE_6__ {int y0; int x0; int yy; int xy; int yx; int xx; } ;
typedef TYPE_2__ cairo_matrix_t ;



__attribute__((used)) static void m2c(uiDrawMatrix *m, cairo_matrix_t *c)
{
 c->xx = m->M11;
 c->yx = m->M12;
 c->xy = m->M21;
 c->yy = m->M22;
 c->x0 = m->M31;
 c->y0 = m->M32;
}
