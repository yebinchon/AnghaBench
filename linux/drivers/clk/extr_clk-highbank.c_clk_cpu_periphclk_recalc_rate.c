
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct hb_clk {int reg; } ;
struct clk_hw {int dummy; } ;


 int HB_A9_PCLK_DIV ;
 int readl (int ) ;
 struct hb_clk* to_hb_clk (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_cpu_periphclk_recalc_rate(struct clk_hw *hwclk,
         unsigned long parent_rate)
{
 struct hb_clk *hbclk = to_hb_clk(hwclk);
 u32 div = (readl(hbclk->reg) & HB_A9_PCLK_DIV) ? 8 : 4;
 return parent_rate / div;
}
