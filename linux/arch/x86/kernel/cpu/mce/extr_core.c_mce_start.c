
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {scalar_t__ monarch_timeout; } ;


 int NSEC_PER_USEC ;
 int SPINUNIT ;
 int atomic_add (int,int *) ;
 int atomic_inc_return (int *) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int global_nwo ;
 TYPE_1__ mca_cfg ;
 int mce_callin ;
 int mce_executing ;
 scalar_t__ mce_timed_out (int*,char*) ;
 int ndelay (int ) ;
 int num_online_cpus () ;
 int smp_rmb () ;

__attribute__((used)) static int mce_start(int *no_way_out)
{
 int order;
 int cpus = num_online_cpus();
 u64 timeout = (u64)mca_cfg.monarch_timeout * NSEC_PER_USEC;

 if (!timeout)
  return -1;

 atomic_add(*no_way_out, &global_nwo);




 order = atomic_inc_return(&mce_callin);




 while (atomic_read(&mce_callin) != cpus) {
  if (mce_timed_out(&timeout,
      "Timeout: Not all CPUs entered broadcast exception handler")) {
   atomic_set(&global_nwo, 0);
   return -1;
  }
  ndelay(SPINUNIT);
 }




 smp_rmb();

 if (order == 1) {



  atomic_set(&mce_executing, 1);
 } else {






  while (atomic_read(&mce_executing) < order) {
   if (mce_timed_out(&timeout,
       "Timeout: Subject CPUs unable to finish machine check processing")) {
    atomic_set(&global_nwo, 0);
    return -1;
   }
   ndelay(SPINUNIT);
  }
 }




 *no_way_out = atomic_read(&global_nwo);

 return order;
}
