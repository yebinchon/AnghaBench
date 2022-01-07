
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hb_clk {int reg; } ;
struct clk_hw {int dummy; } ;


 int HB_A9_BCLK_DIV_MASK ;
 int HB_A9_BCLK_DIV_SHIFT ;
 int readl (int ) ;
 struct hb_clk* to_hb_clk (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_cpu_a9bclk_recalc_rate(struct clk_hw *hwclk,
      unsigned long parent_rate)
{
 struct hb_clk *hbclk = to_hb_clk(hwclk);
 u32 div = (readl(hbclk->reg) & HB_A9_BCLK_DIV_MASK) >> HB_A9_BCLK_DIV_SHIFT;

 return parent_rate / (div + 2);
}
