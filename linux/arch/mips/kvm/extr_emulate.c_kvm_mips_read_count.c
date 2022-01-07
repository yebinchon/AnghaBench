
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mips_coproc {int dummy; } ;
struct TYPE_2__ {struct mips_coproc* cop0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int ktime_get () ;
 scalar_t__ kvm_mips_count_disabled (struct kvm_vcpu*) ;
 int kvm_mips_read_count_running (struct kvm_vcpu*,int ) ;
 int kvm_read_c0_guest_count (struct mips_coproc*) ;

u32 kvm_mips_read_count(struct kvm_vcpu *vcpu)
{
 struct mips_coproc *cop0 = vcpu->arch.cop0;


 if (kvm_mips_count_disabled(vcpu))
  return kvm_read_c0_guest_count(cop0);

 return kvm_mips_read_count_running(vcpu, ktime_get());
}
