
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uiDrawPath ;
struct TYPE_3__ {int cr; } ;
typedef TYPE_1__ uiDrawContext ;


 int CAIRO_FILL_RULE_EVEN_ODD ;
 int CAIRO_FILL_RULE_WINDING ;
 int cairo_clip (int ) ;
 int cairo_set_fill_rule (int ,int ) ;


 int uiprivPathFillMode (int *) ;
 int uiprivRunPath (int *,int ) ;

void uiDrawClip(uiDrawContext *c, uiDrawPath *path)
{
 uiprivRunPath(path, c->cr);
 switch (uiprivPathFillMode(path)) {
 case 128:
  cairo_set_fill_rule(c->cr, CAIRO_FILL_RULE_WINDING);
  break;
 case 129:
  cairo_set_fill_rule(c->cr, CAIRO_FILL_RULE_EVEN_ODD);
  break;
 }
 cairo_clip(c->cr);
}
