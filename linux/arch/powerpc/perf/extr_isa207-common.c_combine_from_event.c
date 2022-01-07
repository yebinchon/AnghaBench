
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int CPU_FTR_ARCH_300 ;
 unsigned long EVENT_COMBINE (int ) ;
 scalar_t__ cpu_has_feature (int ) ;
 unsigned long p9_EVENT_COMBINE (int ) ;

__attribute__((used)) static unsigned long combine_from_event(u64 event)
{
 if (cpu_has_feature(CPU_FTR_ARCH_300))
  return p9_EVENT_COMBINE(event);

 return EVENT_COMBINE(event);
}
