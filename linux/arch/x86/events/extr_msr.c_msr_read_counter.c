
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {scalar_t__ event_base; } ;
struct perf_event {TYPE_1__ hw; } ;


 int rdmsrl (scalar_t__,int ) ;
 int rdtsc_ordered () ;

__attribute__((used)) static inline u64 msr_read_counter(struct perf_event *event)
{
 u64 now;

 if (event->hw.event_base)
  rdmsrl(event->hw.event_base, now);
 else
  now = rdtsc_ordered();

 return now;
}
