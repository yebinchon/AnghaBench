
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int config; } ;
struct TYPE_4__ {scalar_t__ exclude_guest; scalar_t__ exclude_host; } ;
struct perf_event {TYPE_1__ hw; TYPE_2__ attr; } ;


 int AMD64_EVENTSEL_GUESTONLY ;
 int AMD64_EVENTSEL_HOSTONLY ;
 int ARCH_PERFMON_EVENTSEL_OS ;
 int ARCH_PERFMON_EVENTSEL_USR ;

__attribute__((used)) static int amd_core_hw_config(struct perf_event *event)
{
 if (event->attr.exclude_host && event->attr.exclude_guest)





  event->hw.config &= ~(ARCH_PERFMON_EVENTSEL_USR |
          ARCH_PERFMON_EVENTSEL_OS);
 else if (event->attr.exclude_host)
  event->hw.config |= AMD64_EVENTSEL_GUESTONLY;
 else if (event->attr.exclude_guest)
  event->hw.config |= AMD64_EVENTSEL_HOSTONLY;

 return 0;
}
