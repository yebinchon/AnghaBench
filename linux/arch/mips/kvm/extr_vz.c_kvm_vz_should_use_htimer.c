
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ count_hz; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {int gtoffset_mask; } ;


 TYPE_2__ current_cpu_data ;
 scalar_t__ kvm_mips_count_disabled (struct kvm_vcpu*) ;
 scalar_t__ mips_hpt_frequency ;

__attribute__((used)) static bool kvm_vz_should_use_htimer(struct kvm_vcpu *vcpu)
{
 if (kvm_mips_count_disabled(vcpu))
  return 0;


 if (mips_hpt_frequency != vcpu->arch.count_hz)
  return 0;


 if (current_cpu_data.gtoffset_mask != 0xffffffff)
  return 0;

 return 1;
}
