
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int ENOSYS ;
 int HZ ;
 scalar_t__ SIRFSOC_CPU1_JUMPADDR_OFFSET ;
 scalar_t__ SIRFSOC_CPU1_WAKEMAGIC_OFFSET ;
 int __pa_symbol (int ) ;
 int __raw_writel (int,scalar_t__) ;
 int boot_lock ;
 scalar_t__ clk_base ;
 int clk_ids ;
 int cpu_logical_map (unsigned int) ;
 int dsb_sev () ;
 int jiffies ;
 int mb () ;
 struct device_node* of_find_matching_node (int *,int ) ;
 scalar_t__ of_iomap (struct device_node*,int ) ;
 int prima2_pen_release ;
 int sirfsoc_secondary_startup ;
 int smp_rmb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sync_cache_w (int*) ;
 scalar_t__ time_before (int,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int sirfsoc_boot_secondary(unsigned int cpu, struct task_struct *idle)
{
 unsigned long timeout;
 struct device_node *np;

 np = of_find_matching_node(((void*)0), clk_ids);
 if (!np)
  return -ENODEV;

 clk_base = of_iomap(np, 0);
 if (!clk_base)
  return -ENOMEM;
 __raw_writel(__pa_symbol(sirfsoc_secondary_startup),
  clk_base + 0x2bc);


 __raw_writel(0x3CAF5D62,
  clk_base + 0x2b8);


 mb();

 spin_lock(&boot_lock);
 prima2_pen_release = cpu_logical_map(cpu);
 sync_cache_w(&prima2_pen_release);





 dsb_sev();

 timeout = jiffies + (1 * HZ);
 while (time_before(jiffies, timeout)) {
  smp_rmb();
  if (prima2_pen_release == -1)
   break;

  udelay(10);
 }





 spin_unlock(&boot_lock);

 return prima2_pen_release != -1 ? -ENOSYS : 0;
}
