
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmp_clk_unit {int dummy; } ;
struct pxa910_clk_unit {scalar_t__ mpmu_base; struct mmp_clk_unit unit; } ;
struct clk {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int CLK_SET_RATE_PARENT ;
 scalar_t__ MPMU_UART_PLL ;
 int PXA910_CLK_UART_PLL ;
 int fixed_factor_clks ;
 int fixed_rate_clks ;
 int mmp_clk_add (struct mmp_clk_unit*,int ,struct clk*) ;
 struct clk* mmp_clk_register_factor (char*,char*,int ,scalar_t__,int *,int ,int ,int *) ;
 int mmp_register_fixed_factor_clks (struct mmp_clk_unit*,int ,int ) ;
 int mmp_register_fixed_rate_clks (struct mmp_clk_unit*,int ,int ) ;
 int uart_factor_masks ;
 int uart_factor_tbl ;

__attribute__((used)) static void pxa910_pll_init(struct pxa910_clk_unit *pxa_unit)
{
 struct clk *clk;
 struct mmp_clk_unit *unit = &pxa_unit->unit;

 mmp_register_fixed_rate_clks(unit, fixed_rate_clks,
     ARRAY_SIZE(fixed_rate_clks));

 mmp_register_fixed_factor_clks(unit, fixed_factor_clks,
     ARRAY_SIZE(fixed_factor_clks));

 clk = mmp_clk_register_factor("uart_pll", "pll1_4",
    CLK_SET_RATE_PARENT,
    pxa_unit->mpmu_base + MPMU_UART_PLL,
    &uart_factor_masks, uart_factor_tbl,
    ARRAY_SIZE(uart_factor_tbl), ((void*)0));
 mmp_clk_add(unit, PXA910_CLK_UART_PLL, clk);
}
