
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_cpu_dvfs_info {int proc_reg; scalar_t__ need_voltage_tracking; } ;


 scalar_t__ VOLT_TOL ;
 int mtk_cpufreq_voltage_tracking (struct mtk_cpu_dvfs_info*,int) ;
 int regulator_set_voltage (int ,int,scalar_t__) ;

__attribute__((used)) static int mtk_cpufreq_set_voltage(struct mtk_cpu_dvfs_info *info, int vproc)
{
 if (info->need_voltage_tracking)
  return mtk_cpufreq_voltage_tracking(info, vproc);
 else
  return regulator_set_voltage(info->proc_reg, vproc,
          vproc + VOLT_TOL);
}
