
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HYPERVISOR_vcpu_op (int ,int ,int *) ;
 int VCPUOP_down ;
 scalar_t__ irqs_disabled () ;
 int smp_processor_id () ;
 int xen_safe_halt () ;
 int xen_vcpu_nr (int ) ;

__attribute__((used)) static void xen_halt(void)
{
 if (irqs_disabled())
  HYPERVISOR_vcpu_op(VCPUOP_down,
       xen_vcpu_nr(smp_processor_id()), ((void*)0));
 else
  xen_safe_halt();
}
