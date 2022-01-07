
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 int HZ ;
 int WARN_ON (int) ;
 int __start_timer (struct timer_list*,unsigned long) ;
 unsigned long __this_cpu_read (int ) ;
 int __this_cpu_write (int ,unsigned long) ;
 int check_interval ;
 int cpu_info ;
 int machine_check_poll (int ,struct timer_list*) ;
 unsigned long max (unsigned long,unsigned long) ;
 unsigned long mce_adjust_timer (unsigned long) ;
 scalar_t__ mce_available (struct timer_list*) ;
 scalar_t__ mce_intel_cmci_poll () ;
 int mce_next_interval ;
 scalar_t__ mce_notify_irq () ;
 int mce_poll_banks ;
 int mce_timer ;
 unsigned long min (unsigned long,int ) ;
 int round_jiffies_relative (int) ;
 struct timer_list* this_cpu_ptr (int *) ;

__attribute__((used)) static void mce_timer_fn(struct timer_list *t)
{
 struct timer_list *cpu_t = this_cpu_ptr(&mce_timer);
 unsigned long iv;

 WARN_ON(cpu_t != t);

 iv = __this_cpu_read(mce_next_interval);

 if (mce_available(this_cpu_ptr(&cpu_info))) {
  machine_check_poll(0, this_cpu_ptr(&mce_poll_banks));

  if (mce_intel_cmci_poll()) {
   iv = mce_adjust_timer(iv);
   goto done;
  }
 }





 if (mce_notify_irq())
  iv = max(iv / 2, (unsigned long) HZ/100);
 else
  iv = min(iv * 2, round_jiffies_relative(check_interval * HZ));

done:
 __this_cpu_write(mce_next_interval, iv);
 __start_timer(t, iv);
}
