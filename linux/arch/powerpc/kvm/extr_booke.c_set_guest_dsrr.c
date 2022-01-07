
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {unsigned long dsrr0; int dsrr1; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int CPU_FTR_DEBUG_LVL_EXC ;
 scalar_t__ cpu_has_feature (int ) ;
 int set_guest_csrr (struct kvm_vcpu*,unsigned long,int ) ;

__attribute__((used)) static void set_guest_dsrr(struct kvm_vcpu *vcpu, unsigned long srr0, u32 srr1)
{
 if (cpu_has_feature(CPU_FTR_DEBUG_LVL_EXC)) {
  vcpu->arch.dsrr0 = srr0;
  vcpu->arch.dsrr1 = srr1;
 } else {
  set_guest_csrr(vcpu, srr0, srr1);
 }
}
