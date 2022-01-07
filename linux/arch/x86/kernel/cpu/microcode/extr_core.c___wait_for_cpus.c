
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atomic_t ;


 long long SPINUNIT ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int ndelay (long long) ;
 int num_online_cpus () ;
 int pr_err (char*,int) ;
 int touch_nmi_watchdog () ;

__attribute__((used)) static int __wait_for_cpus(atomic_t *t, long long timeout)
{
 int all_cpus = num_online_cpus();

 atomic_inc(t);

 while (atomic_read(t) < all_cpus) {
  if (timeout < SPINUNIT) {
   pr_err("Timeout while waiting for CPUs rendezvous, remaining: %d\n",
    all_cpus - atomic_read(t));
   return 1;
  }

  ndelay(SPINUNIT);
  timeout -= SPINUNIT;

  touch_nmi_watchdog();
 }
 return 0;
}
