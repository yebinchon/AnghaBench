
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {scalar_t__ exclude_host; scalar_t__ exclude_guest; scalar_t__ exclude_user; } ;


 scalar_t__ has_vhe () ;

__attribute__((used)) static bool kvm_pmu_switch_needed(struct perf_event_attr *attr)
{





 if (has_vhe() && attr->exclude_user)
  return 0;


 return (attr->exclude_host != attr->exclude_guest);
}
