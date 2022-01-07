
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;


 int is_64_bit_mode (struct kvm_vcpu*) ;
 int kvm_rax_write (struct kvm_vcpu*,int) ;
 int kvm_rdx_write (struct kvm_vcpu*,int) ;

__attribute__((used)) static void kvm_hv_hypercall_set_result(struct kvm_vcpu *vcpu, u64 result)
{
 bool longmode;

 longmode = is_64_bit_mode(vcpu);
 if (longmode)
  kvm_rax_write(vcpu, result);
 else {
  kvm_rdx_write(vcpu, result >> 32);
  kvm_rax_write(vcpu, result & 0xffffffff);
 }
}
