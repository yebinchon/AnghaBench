
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int reason; int enabled; } ;


 scalar_t__ __this_cpu_read (int ) ;
 int __this_cpu_write (int ,int ) ;
 TYPE_1__ apf_reason ;

u32 kvm_read_and_reset_pf_reason(void)
{
 u32 reason = 0;

 if (__this_cpu_read(apf_reason.enabled)) {
  reason = __this_cpu_read(apf_reason.reason);
  __this_cpu_write(apf_reason.reason, 0);
 }

 return reason;
}
