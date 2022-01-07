
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int prev_count; } ;
struct perf_event {TYPE_1__ hw; } ;


 int READ_ONCE (int ) ;
 int be64_to_cpu (int ) ;
 int * get_event_base_addr (struct perf_event*) ;
 int local64_set (int *,int ) ;

__attribute__((used)) static u64 imc_read_counter(struct perf_event *event)
{
 u64 *addr, data;







 addr = get_event_base_addr(event);
 data = be64_to_cpu(READ_ONCE(*addr));
 local64_set(&event->hw.prev_count, data);

 return data;
}
