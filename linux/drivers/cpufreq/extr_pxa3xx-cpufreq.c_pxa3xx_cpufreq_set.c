
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa3xx_freq_info {int dummy; } ;
struct cpufreq_policy {scalar_t__ cpu; } ;


 int EINVAL ;
 int __update_bus_freq (struct pxa3xx_freq_info*) ;
 int __update_core_freq (struct pxa3xx_freq_info*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 struct pxa3xx_freq_info* pxa3xx_freqs ;

__attribute__((used)) static int pxa3xx_cpufreq_set(struct cpufreq_policy *policy, unsigned int index)
{
 struct pxa3xx_freq_info *next;
 unsigned long flags;

 if (policy->cpu != 0)
  return -EINVAL;

 next = &pxa3xx_freqs[index];

 local_irq_save(flags);
 __update_core_freq(next);
 __update_bus_freq(next);
 local_irq_restore(flags);

 return 0;
}
