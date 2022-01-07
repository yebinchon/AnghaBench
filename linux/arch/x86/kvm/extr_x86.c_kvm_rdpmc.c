
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct kvm_vcpu {int dummy; } ;


 int kvm_pmu_rdpmc (struct kvm_vcpu*,int ,int*) ;
 int kvm_rax_write (struct kvm_vcpu*,int ) ;
 int kvm_rcx_read (struct kvm_vcpu*) ;
 int kvm_rdx_write (struct kvm_vcpu*,int) ;

bool kvm_rdpmc(struct kvm_vcpu *vcpu)
{
 u32 ecx = kvm_rcx_read(vcpu);
 u64 data;
 int err;

 err = kvm_pmu_rdpmc(vcpu, ecx, &data);
 if (err)
  return err;
 kvm_rax_write(vcpu, (u32)data);
 kvm_rdx_write(vcpu, data >> 32);
 return err;
}
