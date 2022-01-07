
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long CMCI_POLL_INTERVAL ;

 unsigned long CMCI_STORM_INTERVAL ;
 int CMCI_STORM_NONE ;

 int __this_cpu_read (int ) ;
 int __this_cpu_write (int ,int) ;
 int atomic_read (int *) ;
 int atomic_sub_return (int,int *) ;
 int cmci_backoff_cnt ;
 int cmci_recheck () ;
 int cmci_storm_on_cpus ;
 int cmci_storm_state ;
 int cmci_toggle_interrupt_mode (int) ;
 int mce_notify_irq () ;
 int pr_notice (char*) ;
 scalar_t__ this_cpu_read (int ) ;

unsigned long cmci_intel_adjust_timer(unsigned long interval)
{
 if ((this_cpu_read(cmci_backoff_cnt) > 0) &&
     (__this_cpu_read(cmci_storm_state) == 129)) {
  mce_notify_irq();
  return CMCI_STORM_INTERVAL;
 }

 switch (__this_cpu_read(cmci_storm_state)) {
 case 129:






  __this_cpu_write(cmci_storm_state, 128);
  if (!atomic_sub_return(1, &cmci_storm_on_cpus))
   pr_notice("CMCI storm subsided: switching to interrupt mode\n");



 case 128:




  if (!atomic_read(&cmci_storm_on_cpus)) {
   __this_cpu_write(cmci_storm_state, CMCI_STORM_NONE);
   cmci_toggle_interrupt_mode(1);
   cmci_recheck();
  }
  return CMCI_POLL_INTERVAL;
 default:


  return interval;
 }
}
