
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int EINVAL ;
 struct clk* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct clk*) ;
 struct clk* clk_get (int *,char const*) ;
 int pr_err (char*,char const*) ;

__attribute__((used)) static struct clk *spear1340_cpu_get_possible_parent(unsigned long newfreq)
{
 struct clk *sys_pclk;
 int pclk;




 const char *sys_clk_src[] = {
  "sys_syn_clk",
  "pll1_clk",
  "pll2_clk",
  "pll3_clk",
 };





 if (newfreq <= 300000000)
  pclk = 0;
 else if (newfreq > 300000000 && newfreq <= 500000000)
  pclk = 3;
 else if (newfreq == 600000000)
  pclk = 1;
 else
  return ERR_PTR(-EINVAL);


 sys_pclk = clk_get(((void*)0), sys_clk_src[pclk]);
 if (IS_ERR(sys_pclk))
  pr_err("Failed to get %s clock\n", sys_clk_src[pclk]);

 return sys_pclk;
}
