
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2416_dvfs {int vddarm_max; int vddarm_min; } ;
struct s3c2416_data {scalar_t__ is_dvs; int armdiv; int armclk; int hclk; scalar_t__ vddarm; } ;


 int clk_get_rate (int ) ;
 int clk_set_parent (int ,int ) ;
 int pr_debug (char*,...) ;
 int pr_err (char*,int,...) ;
 int regulator_set_voltage (scalar_t__,int ,int ) ;
 int s3c2416_cpufreq_set_armdiv (struct s3c2416_data*,int) ;
 struct s3c2416_dvfs* s3c2416_dvfs_table ;

__attribute__((used)) static int s3c2416_cpufreq_leave_dvs(struct s3c2416_data *s3c_freq, int idx)
{



 int ret;

 if (!s3c_freq->is_dvs) {
  pr_debug("cpufreq: not in dvs mode, so can't leave\n");
  return 0;
 }
 if (clk_get_rate(s3c_freq->armdiv) > clk_get_rate(s3c_freq->hclk)) {
  pr_debug("cpufreq: force armdiv to hclk frequency (%lukHz)\n",
    clk_get_rate(s3c_freq->hclk) / 1000);
  ret = s3c2416_cpufreq_set_armdiv(s3c_freq,
     clk_get_rate(s3c_freq->hclk) / 1000);
  if (ret < 0) {
   pr_err("cpufreq: Failed to set the armdiv to %lukHz: %d\n",
          clk_get_rate(s3c_freq->hclk) / 1000, ret);
   return ret;
  }
 }

 pr_debug("cpufreq: switching armclk parent to armdiv (%lukHz)\n",
   clk_get_rate(s3c_freq->armdiv) / 1000);

 ret = clk_set_parent(s3c_freq->armclk, s3c_freq->armdiv);
 if (ret < 0) {
  pr_err("cpufreq: Failed to switch armclk clock parent to armdiv: %d\n",
         ret);
  return ret;
 }

 s3c_freq->is_dvs = 0;

 return 0;
}
