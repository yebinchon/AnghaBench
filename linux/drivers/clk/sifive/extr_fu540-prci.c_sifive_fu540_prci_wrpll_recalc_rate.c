
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct __prci_wrpll_data {int c; } ;
struct __prci_clock {struct __prci_wrpll_data* pwd; } ;


 struct __prci_clock* clk_hw_to_prci_clock (struct clk_hw*) ;
 unsigned long wrpll_calc_output_rate (int *,unsigned long) ;

__attribute__((used)) static unsigned long sifive_fu540_prci_wrpll_recalc_rate(struct clk_hw *hw,
        unsigned long parent_rate)
{
 struct __prci_clock *pc = clk_hw_to_prci_clock(hw);
 struct __prci_wrpll_data *pwd = pc->pwd;

 return wrpll_calc_output_rate(&pwd->c, parent_rate);
}
