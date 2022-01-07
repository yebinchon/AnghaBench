
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nr_hw_wp; scalar_t__ nr_hw_bp; struct kvm_hw_wp_info_arch* hw_bp_info; struct kvm_hw_wp_info_arch* hw_wp_info; } ;
struct TYPE_4__ {TYPE_1__ guestdbg; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct kvm_hw_wp_info_arch {struct kvm_hw_wp_info_arch* old_data; } ;


 int kfree (struct kvm_hw_wp_info_arch*) ;

void kvm_s390_clear_bp_data(struct kvm_vcpu *vcpu)
{
 int i;
 struct kvm_hw_wp_info_arch *hw_wp_info = ((void*)0);

 for (i = 0; i < vcpu->arch.guestdbg.nr_hw_wp; i++) {
  hw_wp_info = &vcpu->arch.guestdbg.hw_wp_info[i];
  kfree(hw_wp_info->old_data);
  hw_wp_info->old_data = ((void*)0);
 }
 kfree(vcpu->arch.guestdbg.hw_wp_info);
 vcpu->arch.guestdbg.hw_wp_info = ((void*)0);

 kfree(vcpu->arch.guestdbg.hw_bp_info);
 vcpu->arch.guestdbg.hw_bp_info = ((void*)0);

 vcpu->arch.guestdbg.nr_hw_wp = 0;
 vcpu->arch.guestdbg.nr_hw_bp = 0;
}
