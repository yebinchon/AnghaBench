
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int mode; scalar_t__ mmio_needed; int mmio_is_write; } ;
struct kvm_run {scalar_t__ immediate_exit; } ;
struct TYPE_2__ {int (* vcpu_run ) (struct kvm_run*,struct kvm_vcpu*) ;} ;


 int EINTR ;
 int IN_GUEST_MODE ;
 int guest_enter_irqoff () ;
 int guest_exit_irqoff () ;
 TYPE_1__* kvm_mips_callbacks ;
 int kvm_mips_complete_mmio_load (struct kvm_vcpu*,struct kvm_run*) ;
 int kvm_sigset_activate (struct kvm_vcpu*) ;
 int kvm_sigset_deactivate (struct kvm_vcpu*) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int lose_fpu (int) ;
 int smp_store_mb (int ,int ) ;
 int stub1 (struct kvm_run*,struct kvm_vcpu*) ;
 int trace_kvm_enter (struct kvm_vcpu*) ;
 int trace_kvm_out (struct kvm_vcpu*) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
{
 int r = -EINTR;

 vcpu_load(vcpu);

 kvm_sigset_activate(vcpu);

 if (vcpu->mmio_needed) {
  if (!vcpu->mmio_is_write)
   kvm_mips_complete_mmio_load(vcpu, run);
  vcpu->mmio_needed = 0;
 }

 if (run->immediate_exit)
  goto out;

 lose_fpu(1);

 local_irq_disable();
 guest_enter_irqoff();
 trace_kvm_enter(vcpu);







 smp_store_mb(vcpu->mode, IN_GUEST_MODE);

 r = kvm_mips_callbacks->vcpu_run(run, vcpu);

 trace_kvm_out(vcpu);
 guest_exit_irqoff();
 local_irq_enable();

out:
 kvm_sigset_deactivate(vcpu);

 vcpu_put(vcpu);
 return r;
}
