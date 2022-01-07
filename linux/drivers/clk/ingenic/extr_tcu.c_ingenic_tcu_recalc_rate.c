
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ingenic_tcu_clk_info {int tcsr_reg; } ;
struct ingenic_tcu_clk {int idx; TYPE_1__* tcu; struct ingenic_tcu_clk_info* info; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int map; } ;


 unsigned int TCU_TCSR_PRESCALE_LSB ;
 unsigned int TCU_TCSR_PRESCALE_MASK ;
 int WARN_ONCE (int,char*,int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct ingenic_tcu_clk* to_tcu_clk (struct clk_hw*) ;

__attribute__((used)) static unsigned long ingenic_tcu_recalc_rate(struct clk_hw *hw,
  unsigned long parent_rate)
{
 struct ingenic_tcu_clk *tcu_clk = to_tcu_clk(hw);
 const struct ingenic_tcu_clk_info *info = tcu_clk->info;
 unsigned int prescale;
 int ret;

 ret = regmap_read(tcu_clk->tcu->map, info->tcsr_reg, &prescale);
 WARN_ONCE(ret < 0, "Unable to read TCSR %d", tcu_clk->idx);

 prescale = (prescale & TCU_TCSR_PRESCALE_MASK) >> TCU_TCSR_PRESCALE_LSB;

 return parent_rate >> (prescale * 2);
}
