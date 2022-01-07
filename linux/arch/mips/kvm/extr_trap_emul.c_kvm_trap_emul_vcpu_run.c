
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* vcpu_run ) (struct kvm_run*,struct kvm_vcpu*) ;int cop0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_run {int dummy; } ;
struct TYPE_4__ {int mm; } ;


 int check_switch_mmu_context (int ) ;
 TYPE_2__* current ;
 int htw_start () ;
 int htw_stop () ;
 int kvm_mips_deliver_interrupts (struct kvm_vcpu*,int ) ;
 int kvm_mips_resume_mm (int) ;
 int kvm_mips_suspend_mm (int) ;
 int kvm_read_c0_guest_cause (int ) ;
 int kvm_trap_emul_vcpu_reenter (struct kvm_run*,struct kvm_vcpu*) ;
 int pagefault_disable () ;
 int pagefault_enable () ;
 int smp_processor_id () ;
 int stub1 (struct kvm_run*,struct kvm_vcpu*) ;

__attribute__((used)) static int kvm_trap_emul_vcpu_run(struct kvm_run *run, struct kvm_vcpu *vcpu)
{
 int cpu = smp_processor_id();
 int r;


 kvm_mips_deliver_interrupts(vcpu,
        kvm_read_c0_guest_cause(vcpu->arch.cop0));

 kvm_trap_emul_vcpu_reenter(run, vcpu);





 pagefault_disable();


 htw_stop();






 kvm_mips_suspend_mm(cpu);

 r = vcpu->arch.vcpu_run(run, vcpu);


 cpu = smp_processor_id();


 check_switch_mmu_context(current->mm);
 kvm_mips_resume_mm(cpu);

 htw_start();

 pagefault_enable();

 return r;
}
