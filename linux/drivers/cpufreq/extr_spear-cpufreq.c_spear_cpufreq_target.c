
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cpufreq_policy {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_4__ {struct clk* clk; TYPE_1__* freq_tbl; } ;
struct TYPE_3__ {int frequency; } ;


 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 long clk_round_rate (struct clk*,long) ;
 int clk_set_rate (struct clk*,long) ;
 scalar_t__ of_machine_is_compatible (char*) ;
 int pr_err (char*,...) ;
 struct clk* spear1340_cpu_get_possible_parent (long) ;
 int spear1340_set_cpu_rate (struct clk*,long) ;
 TYPE_2__ spear_cpufreq ;

__attribute__((used)) static int spear_cpufreq_target(struct cpufreq_policy *policy,
  unsigned int index)
{
 long newfreq;
 struct clk *srcclk;
 int ret, mult = 1;

 newfreq = spear_cpufreq.freq_tbl[index].frequency * 1000;

 if (of_machine_is_compatible("st,spear1340")) {







  srcclk = spear1340_cpu_get_possible_parent(newfreq);
  if (IS_ERR(srcclk)) {
   pr_err("Failed to get src clk\n");
   return PTR_ERR(srcclk);
  }


  mult = 2;
 } else {




  srcclk = spear_cpufreq.clk;
 }

 newfreq = clk_round_rate(srcclk, newfreq * mult);
 if (newfreq <= 0) {
  pr_err("clk_round_rate failed for cpu src clock\n");
  return newfreq;
 }

 if (mult == 2)
  ret = spear1340_set_cpu_rate(srcclk, newfreq);
 else
  ret = clk_set_rate(spear_cpufreq.clk, newfreq);

 if (ret)
  pr_err("CPU Freq: cpu clk_set_rate failed: %d\n", ret);

 return ret;
}
