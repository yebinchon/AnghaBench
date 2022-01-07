
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CP0_ERRCTL_DCACHE ;
 unsigned int CP0_ERRCTL_ICACHE ;
 unsigned int CP0_ERRCTL_MULTIBUS ;
 unsigned int CP0_ERRCTL_RECOVERABLE ;
 int printk (char*) ;

__attribute__((used)) static inline void breakout_errctl(unsigned int val)
{
 if (val & CP0_ERRCTL_RECOVERABLE)
  printk(" recoverable");
 if (val & CP0_ERRCTL_DCACHE)
  printk(" dcache");
 if (val & CP0_ERRCTL_ICACHE)
  printk(" icache");
 if (val & CP0_ERRCTL_MULTIBUS)
  printk(" multiple-buserr");
 printk("\n");
}
