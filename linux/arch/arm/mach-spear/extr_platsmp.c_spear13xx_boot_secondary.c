
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int ENOSYS ;
 int HZ ;
 int boot_lock ;
 int jiffies ;
 int smp_rmb () ;
 int spear_pen_release ;
 int spear_write_pen_release (unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ time_before (int,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int spear13xx_boot_secondary(unsigned int cpu, struct task_struct *idle)
{
 unsigned long timeout;





 spin_lock(&boot_lock);
 spear_write_pen_release(cpu);

 timeout = jiffies + (1 * HZ);
 while (time_before(jiffies, timeout)) {
  smp_rmb();
  if (spear_pen_release == -1)
   break;

  udelay(10);
 }





 spin_unlock(&boot_lock);

 return spear_pen_release != -1 ? -ENOSYS : 0;
}
