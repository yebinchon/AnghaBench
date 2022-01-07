
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int layout; } ;
typedef TYPE_1__ uiDrawTextLayout ;
struct TYPE_6__ {int cr; } ;
typedef TYPE_2__ uiDrawContext ;


 int cairo_move_to (int ,double,double) ;
 int cairo_set_source_rgb (int ,double,double,double) ;
 int pango_cairo_show_layout (int ,int ) ;

void uiDrawText(uiDrawContext *c, uiDrawTextLayout *tl, double x, double y)
{

 cairo_set_source_rgb(c->cr, 0.0, 0.0, 0.0);
 cairo_move_to(c->cr, x, y);
 pango_cairo_show_layout(c->cr, tl->layout);
}
