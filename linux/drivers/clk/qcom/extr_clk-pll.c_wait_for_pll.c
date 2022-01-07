
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int regmap; int hw; } ;
struct clk_pll {int status_bit; int status_reg; TYPE_1__ clkr; } ;


 int BIT (int ) ;
 int ETIMEDOUT ;
 int WARN (int,char*,char const*) ;
 char* clk_hw_get_name (int *) ;
 int regmap_read (int ,int ,int*) ;
 int udelay (int) ;

__attribute__((used)) static int wait_for_pll(struct clk_pll *pll)
{
 u32 val;
 int count;
 int ret;
 const char *name = clk_hw_get_name(&pll->clkr.hw);


 for (count = 200; count > 0; count--) {
  ret = regmap_read(pll->clkr.regmap, pll->status_reg, &val);
  if (ret)
   return ret;
  if (val & BIT(pll->status_bit))
   return 0;
  udelay(1);
 }

 WARN(1, "%s didn't enable after voting for it!\n", name);
 return -ETIMEDOUT;
}
