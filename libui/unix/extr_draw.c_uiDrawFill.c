
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uiDrawPath ;
struct TYPE_3__ {int cr; } ;
typedef TYPE_1__ uiDrawContext ;
typedef int uiDrawBrush ;
typedef int cairo_pattern_t ;


 int CAIRO_FILL_RULE_EVEN_ODD ;
 int CAIRO_FILL_RULE_WINDING ;
 int cairo_fill (int ) ;
 int cairo_pattern_destroy (int *) ;
 int cairo_set_fill_rule (int ,int ) ;
 int cairo_set_source (int ,int *) ;
 int * mkbrush (int *) ;


 int uiprivPathFillMode (int *) ;
 int uiprivRunPath (int *,int ) ;

void uiDrawFill(uiDrawContext *c, uiDrawPath *path, uiDrawBrush *b)
{
 cairo_pattern_t *pat;

 uiprivRunPath(path, c->cr);
 pat = mkbrush(b);
 cairo_set_source(c->cr, pat);
 switch (uiprivPathFillMode(path)) {
 case 128:
  cairo_set_fill_rule(c->cr, CAIRO_FILL_RULE_WINDING);
  break;
 case 129:
  cairo_set_fill_rule(c->cr, CAIRO_FILL_RULE_EVEN_ODD);
  break;
 }
 cairo_fill(c->cr);
 cairo_pattern_destroy(pat);
}
