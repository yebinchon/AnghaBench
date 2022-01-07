
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_controller_dev {int dummy; } ;


 int tegra_clk_rst_assert (struct reset_controller_dev*,unsigned long) ;
 int tegra_clk_rst_deassert (struct reset_controller_dev*,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int tegra_clk_rst_reset(struct reset_controller_dev *rcdev,
  unsigned long id)
{
 int err;

 err = tegra_clk_rst_assert(rcdev, id);
 if (err)
  return err;

 udelay(1);

 return tegra_clk_rst_deassert(rcdev, id);
}
