
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int u32 ;
struct clk_hw {int dummy; } ;
struct TYPE_6__ {int features; scalar_t__ reg; scalar_t__ base; } ;
struct TYPE_5__ {unsigned int shift; int width; } ;
struct TYPE_4__ {unsigned int shift; int width; scalar_t__ offset; } ;
struct ccu_mp {unsigned long fixed_post_div; TYPE_3__ common; TYPE_2__ p; TYPE_1__ m; int mux; } ;


 int CCU_FEATURE_FIXED_POSTDIV ;
 unsigned long ccu_mux_helper_apply_prediv (TYPE_3__*,int *,int,unsigned long) ;
 struct ccu_mp* hw_to_ccu_mp (struct clk_hw*) ;
 unsigned int readl (scalar_t__) ;

__attribute__((used)) static unsigned long ccu_mp_recalc_rate(struct clk_hw *hw,
     unsigned long parent_rate)
{
 struct ccu_mp *cmp = hw_to_ccu_mp(hw);
 unsigned long rate;
 unsigned int m, p;
 u32 reg;


 parent_rate = ccu_mux_helper_apply_prediv(&cmp->common, &cmp->mux, -1,
        parent_rate);

 reg = readl(cmp->common.base + cmp->common.reg);

 m = reg >> cmp->m.shift;
 m &= (1 << cmp->m.width) - 1;
 m += cmp->m.offset;
 if (!m)
  m++;

 p = reg >> cmp->p.shift;
 p &= (1 << cmp->p.width) - 1;

 rate = (parent_rate >> p) / m;
 if (cmp->common.features & CCU_FEATURE_FIXED_POSTDIV)
  rate /= cmp->fixed_post_div;

 return rate;
}
