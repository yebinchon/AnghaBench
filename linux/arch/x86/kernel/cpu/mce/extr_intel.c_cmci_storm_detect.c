
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CMCI_STORM_ACTIVE ;
 scalar_t__ CMCI_STORM_INTERVAL ;
 void* CMCI_STORM_NONE ;
 unsigned int CMCI_STORM_THRESHOLD ;
 int INITIAL_CHECK_INTERVAL ;
 void* __this_cpu_read (int ) ;
 int __this_cpu_write (int ,unsigned int) ;
 int atomic_add_return (int,int *) ;
 int cmci_backoff_cnt ;
 int cmci_storm_cnt ;
 int cmci_storm_on_cpus ;
 int cmci_storm_state ;
 int cmci_time_stamp ;
 int cmci_toggle_interrupt_mode (int) ;
 unsigned long jiffies ;
 int mce_timer_kick (scalar_t__) ;
 int pr_notice (char*) ;
 int this_cpu_write (int ,int ) ;
 scalar_t__ time_before_eq (unsigned long,scalar_t__) ;

__attribute__((used)) static bool cmci_storm_detect(void)
{
 unsigned int cnt = __this_cpu_read(cmci_storm_cnt);
 unsigned long ts = __this_cpu_read(cmci_time_stamp);
 unsigned long now = jiffies;
 int r;

 if (__this_cpu_read(cmci_storm_state) != CMCI_STORM_NONE)
  return 1;

 if (time_before_eq(now, ts + CMCI_STORM_INTERVAL)) {
  cnt++;
 } else {
  cnt = 1;
  __this_cpu_write(cmci_time_stamp, now);
 }
 __this_cpu_write(cmci_storm_cnt, cnt);

 if (cnt <= CMCI_STORM_THRESHOLD)
  return 0;

 cmci_toggle_interrupt_mode(0);
 __this_cpu_write(cmci_storm_state, CMCI_STORM_ACTIVE);
 r = atomic_add_return(1, &cmci_storm_on_cpus);
 mce_timer_kick(CMCI_STORM_INTERVAL);
 this_cpu_write(cmci_backoff_cnt, INITIAL_CHECK_INTERVAL);

 if (r == 1)
  pr_notice("CMCI storm detected: switching to poll mode\n");
 return 1;
}
