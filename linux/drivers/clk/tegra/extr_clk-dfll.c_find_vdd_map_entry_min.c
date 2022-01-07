
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tegra_dfll {scalar_t__ pmu_if; int dev; TYPE_1__* soc; int vdd_reg; } ;
struct TYPE_4__ {int step_uv; } ;
struct TYPE_3__ {TYPE_2__ alignment; } ;


 int EINVAL ;
 scalar_t__ TEGRA_DFLL_PMU_PWM ;
 scalar_t__ WARN_ON (int) ;
 int dev_err (int ,char*,int) ;
 int regulator_count_voltages (int ) ;
 int regulator_list_voltage (int ,int) ;

__attribute__((used)) static int find_vdd_map_entry_min(struct tegra_dfll *td, int uV)
{
 int i, n_voltages, reg_uV, reg_volt_id, align_step;

 if (WARN_ON(td->pmu_if == TEGRA_DFLL_PMU_PWM))
  return -EINVAL;

 align_step = uV / td->soc->alignment.step_uv;
 n_voltages = regulator_count_voltages(td->vdd_reg);
 for (i = 0; i < n_voltages; i++) {
  reg_uV = regulator_list_voltage(td->vdd_reg, i);
  if (reg_uV < 0)
   break;

  reg_volt_id = reg_uV / td->soc->alignment.step_uv;

  if (align_step <= reg_volt_id)
   return i;
 }

 dev_err(td->dev, "no voltage map entry rounding to %d uV\n", uV);
 return -EINVAL;
}
