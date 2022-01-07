
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hb_clk {int reg; } ;
struct clk_hw {int dummy; } ;


 int EINVAL ;
 struct hb_clk* to_hb_clk (struct clk_hw*) ;
 int writel (int,int ) ;

__attribute__((used)) static int clk_periclk_set_rate(struct clk_hw *hwclk, unsigned long rate,
    unsigned long parent_rate)
{
 struct hb_clk *hbclk = to_hb_clk(hwclk);
 u32 div;

 div = parent_rate / rate;
 if (div & 0x1)
  return -EINVAL;

 writel(div >> 1, hbclk->reg);
 return 0;
}
