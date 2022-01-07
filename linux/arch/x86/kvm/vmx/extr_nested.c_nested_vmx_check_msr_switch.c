
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct vmx_msr_entry {int dummy; } ;
struct kvm_vcpu {int dummy; } ;


 int EINVAL ;
 int IS_ALIGNED (int,int) ;
 int cpuid_maxphyaddr (struct kvm_vcpu*) ;

__attribute__((used)) static int nested_vmx_check_msr_switch(struct kvm_vcpu *vcpu,
           u32 count, u64 addr)
{
 int maxphyaddr;

 if (count == 0)
  return 0;
 maxphyaddr = cpuid_maxphyaddr(vcpu);
 if (!IS_ALIGNED(addr, 16) || addr >> maxphyaddr ||
     (addr + count * sizeof(struct vmx_msr_entry) - 1) >> maxphyaddr)
  return -EINVAL;

 return 0;
}
