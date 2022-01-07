
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int kvm; } ;


 int grow_ple_window (struct kvm_vcpu*) ;
 int kvm_pause_in_guest (int ) ;
 int kvm_skip_emulated_instruction (struct kvm_vcpu*) ;
 int kvm_vcpu_on_spin (struct kvm_vcpu*,int) ;

__attribute__((used)) static int handle_pause(struct kvm_vcpu *vcpu)
{
 if (!kvm_pause_in_guest(vcpu->kvm))
  grow_ple_window(vcpu);







 kvm_vcpu_on_spin(vcpu, 1);
 return kvm_skip_emulated_instruction(vcpu);
}
