
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {int dummy; } ;
struct TYPE_2__ {int clk; } ;


 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 struct clk* clk_get_parent (int ) ;
 int clk_set_parent (struct clk*,struct clk*) ;
 int clk_set_rate (struct clk*,unsigned long) ;
 int pr_err (char*,...) ;
 TYPE_1__ spear_cpufreq ;

__attribute__((used)) static int spear1340_set_cpu_rate(struct clk *sys_pclk, unsigned long newfreq)
{
 struct clk *sys_clk;
 int ret = 0;

 sys_clk = clk_get_parent(spear_cpufreq.clk);
 if (IS_ERR(sys_clk)) {
  pr_err("failed to get cpu's parent (sys) clock\n");
  return PTR_ERR(sys_clk);
 }


 ret = clk_set_rate(sys_pclk, newfreq);
 if (ret) {
  pr_err("Failed to set sys clk rate to %lu\n", newfreq);
  return ret;
 }

 ret = clk_set_parent(sys_clk, sys_pclk);
 if (ret) {
  pr_err("Failed to set sys clk parent\n");
  return ret;
 }

 return 0;
}
