
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bcm_clk_div {int dummy; } ;
struct bcm_clk_sel {scalar_t__ parent_count; } ;
struct peri_clk_data {struct bcm_clk_div pre_div; struct bcm_clk_div div; struct bcm_clk_sel sel; } ;
struct TYPE_2__ {struct peri_clk_data* peri; } ;
struct kona_clk {scalar_t__ type; TYPE_1__ u; } ;


 scalar_t__ bcm_clk_peri ;
 scalar_t__ divider_exists (struct bcm_clk_div*) ;
 int divider_is_fixed (struct bcm_clk_div*) ;
 scalar_t__ selector_exists (struct bcm_clk_sel*) ;

__attribute__((used)) static bool clk_requires_trigger(struct kona_clk *bcm_clk)
{
 struct peri_clk_data *peri = bcm_clk->u.peri;
 struct bcm_clk_sel *sel;
 struct bcm_clk_div *div;

 if (bcm_clk->type != bcm_clk_peri)
  return 0;

 sel = &peri->sel;
 if (sel->parent_count && selector_exists(sel))
  return 1;

 div = &peri->div;
 if (!divider_exists(div))
  return 0;


 if (!divider_is_fixed(div))
  return 1;

 div = &peri->pre_div;

 return divider_exists(div) && !divider_is_fixed(div);
}
