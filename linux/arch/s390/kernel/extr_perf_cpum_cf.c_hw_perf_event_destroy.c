
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;


 int __kernel_cpumcf_end () ;
 int atomic_add_unless (int *,int,int) ;
 scalar_t__ atomic_dec_return (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int num_events ;
 int pmc_reserve_mutex ;

__attribute__((used)) static void hw_perf_event_destroy(struct perf_event *event)
{
 if (!atomic_add_unless(&num_events, -1, 1)) {
  mutex_lock(&pmc_reserve_mutex);
  if (atomic_dec_return(&num_events) == 0)
   __kernel_cpumcf_end();
  mutex_unlock(&pmc_reserve_mutex);
 }
}
