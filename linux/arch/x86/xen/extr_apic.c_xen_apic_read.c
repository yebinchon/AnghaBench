
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {int apic_id; int xen_cpuid; } ;
struct TYPE_3__ {TYPE_2__ pcpu_info; } ;
struct xen_platform_op {TYPE_1__ u; int interface_version; int cmd; } ;


 scalar_t__ APIC_ID ;
 scalar_t__ APIC_LDR ;
 scalar_t__ APIC_LVR ;
 int BAD_APICID ;
 int HYPERVISOR_platform_op (struct xen_platform_op*) ;
 scalar_t__ SET_APIC_LOGICAL_ID (unsigned long) ;
 int XENPF_INTERFACE_VERSION ;
 int XENPF_get_cpuinfo ;
 unsigned long smp_processor_id () ;
 int xen_initial_domain () ;

__attribute__((used)) static u32 xen_apic_read(u32 reg)
{
 struct xen_platform_op op = {
  .cmd = XENPF_get_cpuinfo,
  .interface_version = XENPF_INTERFACE_VERSION,
  .u.pcpu_info.xen_cpuid = 0,
 };
 int ret = 0;



 if (!xen_initial_domain() || smp_processor_id())
  return 0;

 if (reg == APIC_LVR)
  return 0x14;




 if (reg != APIC_ID)
  return 0;

 ret = HYPERVISOR_platform_op(&op);
 if (ret)
  op.u.pcpu_info.apic_id = BAD_APICID;

 return op.u.pcpu_info.apic_id << 24;
}
