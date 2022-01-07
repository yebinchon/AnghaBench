
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dev_pm_opp {int dummy; } ;
struct cpufreq_policy {int dummy; } ;
struct TYPE_4__ {int clk; } ;
struct TYPE_3__ {unsigned int frequency; } ;


 size_t ARM ;
 scalar_t__ IS_ERR (struct dev_pm_opp*) ;
 size_t PLL1_SW ;
 size_t PLL1_SYS ;
 size_t PLL2_BUS ;
 size_t PLL2_PFD2_396M ;
 int PTR_ERR (struct dev_pm_opp*) ;
 size_t SECONDARY_SEL ;
 size_t STEP ;
 struct dev_pm_opp* arm_reg ;
 int clk_disable_unprepare (int ) ;
 unsigned long clk_get_rate (int ) ;
 int clk_prepare_enable (int ) ;
 int clk_set_parent (int ,int ) ;
 int clk_set_rate (int ,unsigned int) ;
 TYPE_2__* clks ;
 int cpu_dev ;
 int dev_dbg (int ,char*,unsigned int,unsigned long,unsigned int,unsigned long) ;
 int dev_err (int ,char*,int) ;
 struct dev_pm_opp* dev_pm_opp_find_freq_ceil (int ,unsigned long*) ;
 unsigned long dev_pm_opp_get_voltage (struct dev_pm_opp*) ;
 int dev_pm_opp_put (struct dev_pm_opp*) ;
 int dev_warn (int ,char*,int) ;
 TYPE_1__* freq_table ;
 unsigned long* imx6_soc_volt ;
 scalar_t__ of_machine_is_compatible (char*) ;
 struct dev_pm_opp* pu_reg ;
 unsigned long regulator_get_voltage (struct dev_pm_opp*) ;
 int regulator_set_voltage_tol (struct dev_pm_opp*,unsigned long,int ) ;
 struct dev_pm_opp* soc_reg ;

__attribute__((used)) static int imx6q_set_target(struct cpufreq_policy *policy, unsigned int index)
{
 struct dev_pm_opp *opp;
 unsigned long freq_hz, volt, volt_old;
 unsigned int old_freq, new_freq;
 bool pll1_sys_temp_enabled = 0;
 int ret;

 new_freq = freq_table[index].frequency;
 freq_hz = new_freq * 1000;
 old_freq = clk_get_rate(clks[ARM].clk) / 1000;

 opp = dev_pm_opp_find_freq_ceil(cpu_dev, &freq_hz);
 if (IS_ERR(opp)) {
  dev_err(cpu_dev, "failed to find OPP for %ld\n", freq_hz);
  return PTR_ERR(opp);
 }

 volt = dev_pm_opp_get_voltage(opp);
 dev_pm_opp_put(opp);

 volt_old = regulator_get_voltage(arm_reg);

 dev_dbg(cpu_dev, "%u MHz, %ld mV --> %u MHz, %ld mV\n",
  old_freq / 1000, volt_old / 1000,
  new_freq / 1000, volt / 1000);


 if (new_freq > old_freq) {
  if (!IS_ERR(pu_reg)) {
   ret = regulator_set_voltage_tol(pu_reg, imx6_soc_volt[index], 0);
   if (ret) {
    dev_err(cpu_dev, "failed to scale vddpu up: %d\n", ret);
    return ret;
   }
  }
  ret = regulator_set_voltage_tol(soc_reg, imx6_soc_volt[index], 0);
  if (ret) {
   dev_err(cpu_dev, "failed to scale vddsoc up: %d\n", ret);
   return ret;
  }
  ret = regulator_set_voltage_tol(arm_reg, volt, 0);
  if (ret) {
   dev_err(cpu_dev,
    "failed to scale vddarm up: %d\n", ret);
   return ret;
  }
 }
 if (of_machine_is_compatible("fsl,imx6ul") ||
     of_machine_is_compatible("fsl,imx6ull")) {







  clk_set_rate(clks[ARM].clk, (old_freq >> 1) * 1000);
  clk_set_parent(clks[PLL1_SW].clk, clks[PLL1_SYS].clk);
  if (freq_hz > clk_get_rate(clks[PLL2_PFD2_396M].clk))
   clk_set_parent(clks[SECONDARY_SEL].clk,
           clks[PLL2_BUS].clk);
  else
   clk_set_parent(clks[SECONDARY_SEL].clk,
           clks[PLL2_PFD2_396M].clk);
  clk_set_parent(clks[STEP].clk, clks[SECONDARY_SEL].clk);
  clk_set_parent(clks[PLL1_SW].clk, clks[STEP].clk);
  if (freq_hz > clk_get_rate(clks[PLL2_BUS].clk)) {
   clk_set_rate(clks[PLL1_SYS].clk, new_freq * 1000);
   clk_set_parent(clks[PLL1_SW].clk, clks[PLL1_SYS].clk);
  }
 } else {
  clk_set_parent(clks[STEP].clk, clks[PLL2_PFD2_396M].clk);
  clk_set_parent(clks[PLL1_SW].clk, clks[STEP].clk);
  if (freq_hz > clk_get_rate(clks[PLL2_PFD2_396M].clk)) {
   clk_set_rate(clks[PLL1_SYS].clk, new_freq * 1000);
   clk_set_parent(clks[PLL1_SW].clk, clks[PLL1_SYS].clk);
  } else {

   pll1_sys_temp_enabled = 1;
   clk_prepare_enable(clks[PLL1_SYS].clk);
  }
 }


 ret = clk_set_rate(clks[ARM].clk, new_freq * 1000);
 if (ret) {
  int ret1;

  dev_err(cpu_dev, "failed to set clock rate: %d\n", ret);
  ret1 = regulator_set_voltage_tol(arm_reg, volt_old, 0);
  if (ret1)
   dev_warn(cpu_dev,
     "failed to restore vddarm voltage: %d\n", ret1);
  return ret;
 }


 if (pll1_sys_temp_enabled)
  clk_disable_unprepare(clks[PLL1_SYS].clk);


 if (new_freq < old_freq) {
  ret = regulator_set_voltage_tol(arm_reg, volt, 0);
  if (ret)
   dev_warn(cpu_dev,
     "failed to scale vddarm down: %d\n", ret);
  ret = regulator_set_voltage_tol(soc_reg, imx6_soc_volt[index], 0);
  if (ret)
   dev_warn(cpu_dev, "failed to scale vddsoc down: %d\n", ret);
  if (!IS_ERR(pu_reg)) {
   ret = regulator_set_voltage_tol(pu_reg, imx6_soc_volt[index], 0);
   if (ret)
    dev_warn(cpu_dev, "failed to scale vddpu down: %d\n", ret);
  }
 }

 return 0;
}
