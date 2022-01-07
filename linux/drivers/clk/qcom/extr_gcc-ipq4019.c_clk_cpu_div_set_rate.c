
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct freq_tbl {int pre_div; } ;
struct clk_hw {int dummy; } ;
struct TYPE_3__ {int regmap; } ;
struct TYPE_4__ {int shift; int reg; TYPE_1__ clkr; int width; } ;
struct clk_fepll {TYPE_2__ cdiv; int freq_tbl; } ;


 int BIT (int ) ;
 int EINVAL ;
 struct freq_tbl* qcom_find_freq (int ,unsigned long) ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct clk_fepll* to_clk_fepll (struct clk_hw*) ;
 int udelay (int) ;

__attribute__((used)) static int clk_cpu_div_set_rate(struct clk_hw *hw, unsigned long rate,
    unsigned long parent_rate)
{
 struct clk_fepll *pll = to_clk_fepll(hw);
 const struct freq_tbl *f;
 u32 mask;
 int ret;

 f = qcom_find_freq(pll->freq_tbl, rate);
 if (!f)
  return -EINVAL;

 mask = (BIT(pll->cdiv.width) - 1) << pll->cdiv.shift;
 ret = regmap_update_bits(pll->cdiv.clkr.regmap,
     pll->cdiv.reg, mask,
     f->pre_div << pll->cdiv.shift);




 udelay(1);

 return 0;
}
