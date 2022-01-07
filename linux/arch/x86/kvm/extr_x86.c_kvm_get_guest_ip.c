
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __this_cpu_read (int ) ;
 int current_vcpu ;
 unsigned long kvm_rip_read (scalar_t__) ;

__attribute__((used)) static unsigned long kvm_get_guest_ip(void)
{
 unsigned long ip = 0;

 if (__this_cpu_read(current_vcpu))
  ip = kvm_rip_read(__this_cpu_read(current_vcpu));

 return ip;
}
