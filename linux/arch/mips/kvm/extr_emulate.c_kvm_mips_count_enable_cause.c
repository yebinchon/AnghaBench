
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mips_coproc {int dummy; } ;
struct TYPE_2__ {struct mips_coproc* cop0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int CAUSEF_DC ;
 int kvm_clear_c0_guest_cause (struct mips_coproc*,int ) ;
 int kvm_mips_write_count (struct kvm_vcpu*,int ) ;
 int kvm_read_c0_guest_count (struct mips_coproc*) ;

void kvm_mips_count_enable_cause(struct kvm_vcpu *vcpu)
{
 struct mips_coproc *cop0 = vcpu->arch.cop0;
 u32 count;

 kvm_clear_c0_guest_cause(cop0, CAUSEF_DC);






 count = kvm_read_c0_guest_count(cop0);
 kvm_mips_write_count(vcpu, count);
}
