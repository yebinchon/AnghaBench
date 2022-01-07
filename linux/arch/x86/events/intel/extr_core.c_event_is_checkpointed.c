
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int config; } ;
struct perf_event {TYPE_1__ hw; } ;


 int HSW_IN_TX_CHECKPOINTED ;

__attribute__((used)) static inline bool event_is_checkpointed(struct perf_event *event)
{
 return (event->hw.config & HSW_IN_TX_CHECKPOINTED) != 0;
}
