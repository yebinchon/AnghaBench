
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_clk_periph_gate {scalar_t__* enable_refcnt; size_t clk_num; int flags; } ;
struct clk_hw {int dummy; } ;


 int TEGRA_PERIPH_ON_APB ;
 int periph_clk_to_bit (struct tegra_clk_periph_gate*) ;
 int periph_ref_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tegra_read_chipid () ;
 struct tegra_clk_periph_gate* to_clk_periph_gate (struct clk_hw*) ;
 int write_enb_clr (int ,struct tegra_clk_periph_gate*) ;

__attribute__((used)) static void clk_periph_disable(struct clk_hw *hw)
{
 struct tegra_clk_periph_gate *gate = to_clk_periph_gate(hw);
 unsigned long flags = 0;

 spin_lock_irqsave(&periph_ref_lock, flags);

 gate->enable_refcnt[gate->clk_num]--;
 if (gate->enable_refcnt[gate->clk_num] > 0) {
  spin_unlock_irqrestore(&periph_ref_lock, flags);
  return;
 }






 if (gate->flags & TEGRA_PERIPH_ON_APB)
  tegra_read_chipid();

 write_enb_clr(periph_clk_to_bit(gate), gate);

 spin_unlock_irqrestore(&periph_ref_lock, flags);
}
