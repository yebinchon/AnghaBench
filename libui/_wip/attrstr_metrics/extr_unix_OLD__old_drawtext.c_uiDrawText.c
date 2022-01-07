
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uiDrawTextLayout ;
struct TYPE_3__ {int cr; } ;
typedef TYPE_1__ uiDrawContext ;
typedef int PangoLayout ;


 int * pango_cairo_create_layout (int ) ;

void uiDrawText(uiDrawContext *c, double x, double y, uiDrawTextLayout *layout)
{
 PangoLayout *pl;

 pl = pango_cairo_create_layout(c->cr);
}
