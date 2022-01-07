
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,scalar_t__) ;
 int machine_crash_nonpanic_core ;
 int mdelay (int) ;
 scalar_t__ num_online_cpus () ;
 int pr_warn (char*) ;
 int smp_call_function (int ,int *,int) ;
 int waiting_for_crash_ipi ;

void crash_smp_send_stop(void)
{
 static int cpus_stopped;
 unsigned long msecs;

 if (cpus_stopped)
  return;

 atomic_set(&waiting_for_crash_ipi, num_online_cpus() - 1);
 smp_call_function(machine_crash_nonpanic_core, ((void*)0), 0);
 msecs = 1000;
 while ((atomic_read(&waiting_for_crash_ipi) > 0) && msecs) {
  mdelay(1);
  msecs--;
 }
 if (atomic_read(&waiting_for_crash_ipi) > 0)
  pr_warn("Non-crashing CPUs did not react to IPI\n");

 cpus_stopped = 1;
}
