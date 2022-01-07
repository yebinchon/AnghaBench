
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Cap; int Join; int DashPhase; int NumDashes; int Dashes; int Thickness; int MiterLimit; } ;
typedef TYPE_1__ uiDrawStrokeParams ;
typedef int uiDrawPath ;
struct TYPE_6__ {int cr; } ;
typedef TYPE_2__ uiDrawContext ;
typedef int uiDrawBrush ;
typedef int cairo_pattern_t ;


 int CAIRO_LINE_CAP_BUTT ;
 int CAIRO_LINE_CAP_ROUND ;
 int CAIRO_LINE_CAP_SQUARE ;
 int CAIRO_LINE_JOIN_BEVEL ;
 int CAIRO_LINE_JOIN_MITER ;
 int CAIRO_LINE_JOIN_ROUND ;
 int cairo_pattern_destroy (int *) ;
 int cairo_set_dash (int ,int ,int ,int ) ;
 int cairo_set_line_cap (int ,int ) ;
 int cairo_set_line_join (int ,int ) ;
 int cairo_set_line_width (int ,int ) ;
 int cairo_set_miter_limit (int ,int ) ;
 int cairo_set_source (int ,int *) ;
 int cairo_stroke (int ) ;
 int * mkbrush (int *) ;






 int uiprivRunPath (int *,int ) ;

void uiDrawStroke(uiDrawContext *c, uiDrawPath *path, uiDrawBrush *b, uiDrawStrokeParams *p)
{
 cairo_pattern_t *pat;

 uiprivRunPath(path, c->cr);
 pat = mkbrush(b);
 cairo_set_source(c->cr, pat);
 switch (p->Cap) {
 case 133:
  cairo_set_line_cap(c->cr, CAIRO_LINE_CAP_BUTT);
  break;
 case 132:
  cairo_set_line_cap(c->cr, CAIRO_LINE_CAP_ROUND);
  break;
 case 131:
  cairo_set_line_cap(c->cr, CAIRO_LINE_CAP_SQUARE);
  break;
 }
 switch (p->Join) {
 case 129:
  cairo_set_line_join(c->cr, CAIRO_LINE_JOIN_MITER);
  cairo_set_miter_limit(c->cr, p->MiterLimit);
  break;
 case 128:
  cairo_set_line_join(c->cr, CAIRO_LINE_JOIN_ROUND);
  break;
 case 130:
  cairo_set_line_join(c->cr, CAIRO_LINE_JOIN_BEVEL);
  break;
 }
 cairo_set_line_width(c->cr, p->Thickness);
 cairo_set_dash(c->cr, p->Dashes, p->NumDashes, p->DashPhase);
 cairo_stroke(c->cr);
 cairo_pattern_destroy(pat);
}
