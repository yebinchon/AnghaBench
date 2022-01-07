
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct __prci_wrpll_data {int (* disable_bypass ) (struct __prci_data*) ;int c; int (* enable_bypass ) (struct __prci_data*) ;} ;
struct __prci_data {int dummy; } ;
struct __prci_clock {struct __prci_data* pd; struct __prci_wrpll_data* pwd; } ;


 int __prci_wrpll_write_cfg (struct __prci_data*,struct __prci_wrpll_data*,int *) ;
 struct __prci_clock* clk_hw_to_prci_clock (struct clk_hw*) ;
 int stub1 (struct __prci_data*) ;
 int stub2 (struct __prci_data*) ;
 int udelay (int ) ;
 int wrpll_calc_max_lock_us (int *) ;
 int wrpll_configure_for_rate (int *,unsigned long,unsigned long) ;

__attribute__((used)) static int sifive_fu540_prci_wrpll_set_rate(struct clk_hw *hw,
         unsigned long rate,
         unsigned long parent_rate)
{
 struct __prci_clock *pc = clk_hw_to_prci_clock(hw);
 struct __prci_wrpll_data *pwd = pc->pwd;
 struct __prci_data *pd = pc->pd;
 int r;

 r = wrpll_configure_for_rate(&pwd->c, rate, parent_rate);
 if (r)
  return r;

 if (pwd->enable_bypass)
  pwd->enable_bypass(pd);

 __prci_wrpll_write_cfg(pd, pwd, &pwd->c);

 udelay(wrpll_calc_max_lock_us(&pwd->c));

 if (pwd->disable_bypass)
  pwd->disable_bypass(pd);

 return 0;
}
