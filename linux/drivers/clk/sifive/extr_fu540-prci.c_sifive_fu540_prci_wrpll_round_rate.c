
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wrpll_cfg {int dummy; } ;
struct clk_hw {int dummy; } ;
struct __prci_wrpll_data {int c; } ;
struct __prci_clock {struct __prci_wrpll_data* pwd; } ;
typedef int c ;


 struct __prci_clock* clk_hw_to_prci_clock (struct clk_hw*) ;
 int memcpy (struct wrpll_cfg*,int *,int) ;
 long wrpll_calc_output_rate (struct wrpll_cfg*,unsigned long) ;
 int wrpll_configure_for_rate (struct wrpll_cfg*,unsigned long,unsigned long) ;

__attribute__((used)) static long sifive_fu540_prci_wrpll_round_rate(struct clk_hw *hw,
            unsigned long rate,
            unsigned long *parent_rate)
{
 struct __prci_clock *pc = clk_hw_to_prci_clock(hw);
 struct __prci_wrpll_data *pwd = pc->pwd;
 struct wrpll_cfg c;

 memcpy(&c, &pwd->c, sizeof(c));

 wrpll_configure_for_rate(&c, rate, *parent_rate);

 return wrpll_calc_output_rate(&c, *parent_rate);
}
