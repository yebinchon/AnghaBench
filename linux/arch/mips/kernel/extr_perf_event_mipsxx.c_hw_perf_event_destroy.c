
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event {int dummy; } ;
struct TYPE_2__ {scalar_t__ num_counters; } ;


 int active_events ;
 scalar_t__ atomic_dec_and_mutex_lock (int *,int *) ;
 TYPE_1__ mipspmu ;
 int mipspmu_free_irq () ;
 int mutex_unlock (int *) ;
 int on_each_cpu (int ,void*,int) ;
 int pmu_reserve_mutex ;
 int reset_counters ;

__attribute__((used)) static void hw_perf_event_destroy(struct perf_event *event)
{
 if (atomic_dec_and_mutex_lock(&active_events,
    &pmu_reserve_mutex)) {




  on_each_cpu(reset_counters,
   (void *)(long)mipspmu.num_counters, 1);
  mipspmu_free_irq();
  mutex_unlock(&pmu_reserve_mutex);
 }
}
