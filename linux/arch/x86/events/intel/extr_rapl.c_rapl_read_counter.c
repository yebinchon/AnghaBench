
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int event_base; } ;
struct perf_event {TYPE_1__ hw; } ;


 int rdmsrl (int ,int ) ;

__attribute__((used)) static inline u64 rapl_read_counter(struct perf_event *event)
{
 u64 raw;
 rdmsrl(event->hw.event_base, raw);
 return raw;
}
