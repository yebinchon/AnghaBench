
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq_type; int mpic; int dec_timer; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;





 int hrtimer_cancel (int *) ;
 int kvmppc_core_vcpu_free (struct kvm_vcpu*) ;
 int kvmppc_mpic_disconnect_vcpu (int ,struct kvm_vcpu*) ;
 int kvmppc_remove_vcpu_debugfs (struct kvm_vcpu*) ;
 int kvmppc_xics_free_icp (struct kvm_vcpu*) ;
 int kvmppc_xive_cleanup_vcpu (struct kvm_vcpu*) ;
 int kvmppc_xive_native_cleanup_vcpu (struct kvm_vcpu*) ;
 int xics_on_xive () ;

void kvm_arch_vcpu_free(struct kvm_vcpu *vcpu)
{

 hrtimer_cancel(&vcpu->arch.dec_timer);

 kvmppc_remove_vcpu_debugfs(vcpu);

 switch (vcpu->arch.irq_type) {
 case 130:
  kvmppc_mpic_disconnect_vcpu(vcpu->arch.mpic, vcpu);
  break;
 case 129:
  if (xics_on_xive())
   kvmppc_xive_cleanup_vcpu(vcpu);
  else
   kvmppc_xics_free_icp(vcpu);
  break;
 case 128:
  kvmppc_xive_native_cleanup_vcpu(vcpu);
  break;
 }

 kvmppc_core_vcpu_free(vcpu);
}
