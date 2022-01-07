
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct reset_controller_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ rst_set_reg; } ;


 int BIT (unsigned long) ;
 int EINVAL ;
 scalar_t__ clk_base ;
 int num_special_reset ;
 int periph_banks ;
 TYPE_1__* periph_regs ;
 int special_reset_assert (unsigned long) ;
 int tegra_read_chipid () ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int tegra_clk_rst_assert(struct reset_controller_dev *rcdev,
  unsigned long id)
{







 tegra_read_chipid();

 if (id < periph_banks * 32) {
  writel_relaxed(BIT(id % 32),
          clk_base + periph_regs[id / 32].rst_set_reg);
  return 0;
 } else if (id < periph_banks * 32 + num_special_reset) {
  return special_reset_assert(id);
 }

 return -EINVAL;
}
