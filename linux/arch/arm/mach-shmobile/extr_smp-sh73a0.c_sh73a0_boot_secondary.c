
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int PSTR ;
 int SRESCR ;
 int WUPCR ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;
 unsigned int cpu_logical_map (unsigned int) ;

__attribute__((used)) static int sh73a0_boot_secondary(unsigned int cpu, struct task_struct *idle)
{
 unsigned int lcpu = cpu_logical_map(cpu);

 if (((__raw_readl(PSTR) >> (4 * lcpu)) & 3) == 3)
  __raw_writel(1 << lcpu, WUPCR);
 else
  __raw_writel(1 << lcpu, SRESCR);

 return 0;
}
