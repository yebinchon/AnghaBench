
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int frac_width; } ;
struct TYPE_5__ {TYPE_1__ s; } ;
struct bcm_clk_div {TYPE_2__ u; } ;
struct peri_clk_data {struct bcm_clk_div pre_div; struct bcm_clk_div div; } ;
struct TYPE_6__ {struct peri_clk_data* peri; } ;
struct kona_clk {scalar_t__ type; TYPE_3__ u; } ;


 int BITS_PER_BYTE ;
 int BUG_ON (int) ;
 scalar_t__ bcm_clk_peri ;
 int divider_exists (struct bcm_clk_div*) ;
 scalar_t__ divider_is_fixed (struct bcm_clk_div*) ;

__attribute__((used)) static bool kona_dividers_valid(struct kona_clk *bcm_clk)
{
 struct peri_clk_data *peri = bcm_clk->u.peri;
 struct bcm_clk_div *div;
 struct bcm_clk_div *pre_div;
 u32 limit;

 BUG_ON(bcm_clk->type != bcm_clk_peri);

 if (!divider_exists(&peri->div) || !divider_exists(&peri->pre_div))
  return 1;

 div = &peri->div;
 pre_div = &peri->pre_div;
 if (divider_is_fixed(div) || divider_is_fixed(pre_div))
  return 1;

 limit = BITS_PER_BYTE * sizeof(u32);

 return div->u.s.frac_width + pre_div->u.s.frac_width <= limit;
}
