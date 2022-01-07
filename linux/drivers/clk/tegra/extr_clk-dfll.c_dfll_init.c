
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_dfll {scalar_t__ ref_rate; int dvco_rst; int ref_clk; int soc_clk; int dev; TYPE_1__* soc; scalar_t__ last_unrounded_rate; int i2c_clk; } ;
struct TYPE_2__ {int (* init_clock_trimmers ) () ;} ;


 int DFLL_DISABLED ;
 int EINVAL ;
 scalar_t__ REF_CLOCK_RATE ;
 scalar_t__ clk_get_rate (int ) ;
 int clk_prepare (int ) ;
 int clk_unprepare (int ) ;
 int dev_err (int ,char*,...) ;
 int dfll_init_out_if (struct tegra_dfll*) ;
 int dfll_set_default_params (struct tegra_dfll*) ;
 int dfll_set_mode (struct tegra_dfll*,int ) ;
 int dfll_set_open_loop_config (struct tegra_dfll*) ;
 int pm_runtime_enable (int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;
 int stub1 () ;

__attribute__((used)) static int dfll_init(struct tegra_dfll *td)
{
 int ret;

 td->ref_rate = clk_get_rate(td->ref_clk);
 if (td->ref_rate != REF_CLOCK_RATE) {
  dev_err(td->dev, "unexpected ref clk rate %lu, expecting %lu",
   td->ref_rate, REF_CLOCK_RATE);
  return -EINVAL;
 }

 reset_control_deassert(td->dvco_rst);

 ret = clk_prepare(td->ref_clk);
 if (ret) {
  dev_err(td->dev, "failed to prepare ref_clk\n");
  return ret;
 }

 ret = clk_prepare(td->soc_clk);
 if (ret) {
  dev_err(td->dev, "failed to prepare soc_clk\n");
  goto di_err1;
 }

 ret = clk_prepare(td->i2c_clk);
 if (ret) {
  dev_err(td->dev, "failed to prepare i2c_clk\n");
  goto di_err2;
 }

 td->last_unrounded_rate = 0;

 pm_runtime_enable(td->dev);
 pm_runtime_get_sync(td->dev);

 dfll_set_mode(td, DFLL_DISABLED);
 dfll_set_default_params(td);

 if (td->soc->init_clock_trimmers)
  td->soc->init_clock_trimmers();

 dfll_set_open_loop_config(td);

 dfll_init_out_if(td);

 pm_runtime_put_sync(td->dev);

 return 0;

di_err2:
 clk_unprepare(td->soc_clk);
di_err1:
 clk_unprepare(td->ref_clk);

 reset_control_assert(td->dvco_rst);

 return ret;
}
